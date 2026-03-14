#!/usr/bin/env node

/**
 * File Organizer Tool
 * 自动整理文件到分类目录
 * 版本: 1.0.0
 */

const fs = require('fs');
const path = require('path');
const { execSync } = require('child_process');

// 配置
const CONFIG = {
  // 默认规则
  rules: [
    {
      pattern: /image/i,
      target: 'images',
      action: 'move'
    },
    {
      pattern: /video/i,
      target: 'videos',
      action: 'move'
    },
    {
      pattern: /audio/i,
      target: 'audios',
      action: 'move'
    },
    {
      pattern: /document/i,
      target: 'documents',
      action: 'move'
    },
    {
      pattern: /pdf$/i,
      target: 'documents',
      action: 'move'
    },
    {
      pattern: /zip$/i,
      target: 'archives',
      action: 'move'
    },
    {
      pattern: /tar$/i,
      target: 'archives',
      action: 'move'
    },
    {
      pattern: /gz$/i,
      target: 'archives',
      action: 'move'
    },
    {
      pattern: /exe$/i,
      target: 'installers',
      action: 'move'
    },
    {
      pattern: /dmg$/i,
      target: 'installers',
      action: 'move'
    },
    {
      pattern: /msi$/i,
      target: 'installers',
      action: 'move'
    },
    {
      pattern: /apk$/i,
      target: 'installers',
      action: 'move'
    },
    {
      pattern: /apk$/i,
      target: 'installers',
      action: 'move'
    },
    {
      pattern: /^$/i,
      target: 'misc',
      action: 'move'
    }
  ],

  // 目录结构
  structure: {
    images: ['wallpapers', 'screenshots', 'photos'],
    videos: ['movies', 'tv-shows', 'recordings'],
    audios: ['music', 'podcasts', 'recordings'],
    documents: ['work', 'personal', 'contracts'],
    archives: ['backup', 'downloads'],
    installers: ['windows', 'macos', 'linux', 'mobile'],
    misc: ['temp', 'trash']
  }
};

class FileOrganizer {
  constructor(rootPath, options = {}) {
    this.rootPath = path.resolve(rootPath);
    this.options = {
      dryRun: options.dryRun || false,
      verbose: options.verbose || false,
      confirm: options.confirm || false,
      ...options
    };
    this.stats = {
      scanned: 0,
      moved: 0,
      copied: 0,
      skipped: 0,
      errors: 0
    };
  }

  // 扫描目录
  scanDirectory(dirPath) {
    const files = [];
    try {
      const items = fs.readdirSync(dirPath, { withFileTypes: true });

      for (const item of items) {
        this.stats.scanned++;

        if (item.isDirectory()) {
          // 递归扫描子目录
          files.push(...this.scanDirectory(path.join(dirPath, item.name)));
        } else if (item.isFile()) {
          files.push({
            name: item.name,
            path: path.join(dirPath, item.name),
            size: item.size,
            mtime: item.mtime
          });
        }
      }
    } catch (error) {
      this.stats.errors++;
      this.log(`Error scanning ${dirPath}: ${error.message}`, 'error');
    }

    return files;
  }

  // 获取文件分类
  getCategory(filename) {
    const lowerName = filename.toLowerCase();

    for (const rule of CONFIG.rules) {
      if (rule.pattern.test(lowerName)) {
        return rule.target;
      }
    }

    return 'misc';
  }

  // 获取子分类
  getSubCategory(category, filename) {
    const lowerName = filename.toLowerCase();
    const subCategories = CONFIG.structure[category] || [];

    for (const subCat of subCategories) {
      if (lowerName.includes(subCat.toLowerCase())) {
        return subCat;
      }
    }

    return subCategories[0] || '';
  }

  // 创建目录
  createDirectory(dirPath) {
    if (!fs.existsSync(dirPath)) {
      if (!this.options.dryRun) {
        fs.mkdirSync(dirPath, { recursive: true });
      }
      this.log(`Created directory: ${dirPath}`, 'info');
    }
  }

  // 移动文件
  moveFile(source, target) {
    try {
      if (this.options.dryRun) {
        this.stats.moved++;
        this.log(`[DRY RUN] Would move: ${source} → ${target}`, 'info');
        return true;
      }

      const dir = path.dirname(target);
      this.createDirectory(dir);

      fs.renameSync(source, target);
      this.stats.moved++;
      this.log(`Moved: ${source} → ${target}`, 'success');
      return true;
    } catch (error) {
      this.stats.errors++;
      this.log(`Error moving ${source}: ${error.message}`, 'error');
      return false;
    }
  }

  // 复制文件
  copyFile(source, target) {
    try {
      if (this.options.dryRun) {
        this.stats.copied++;
        this.log(`[DRY RUN] Would copy: ${source} → ${target}`, 'info');
        return true;
      }

      const dir = path.dirname(target);
      this.createDirectory(dir);

      fs.copyFileSync(source, target);
      this.stats.copied++;
      this.log(`Copied: ${source} → ${target}`, 'success');
      return true;
    } catch (error) {
      this.stats.errors++;
      this.log(`Error copying ${source}: ${error.message}`, 'error');
      return false;
    }
  }

  // 处理文件
  processFile(file) {
    const category = this.getCategory(file.name);
    const subCategory = this.getSubCategory(category, file.name);
    const targetDir = path.join(this.rootPath, category, subCategory);
    const targetFile = path.join(targetDir, file.name);

    // 检查目标文件是否已存在
    if (fs.existsSync(targetFile)) {
      this.stats.skipped++;
      this.log(`Skipped (exists): ${file.path}`, 'warning');
      return;
    }

    // 移动或复制
    const action = CONFIG.rules.find(r => r.pattern.test(file.name.toLowerCase()))?.action || 'move';
    const success = action === 'copy'
      ? this.copyFile(file.path, targetFile)
      : this.moveFile(file.path, targetFile);

    return success;
  }

  // 执行整理
  organize() {
    this.log('=== File Organizer ===', 'info');
    this.log(`Scanning directory: ${this.rootPath}`, 'info');
    this.log('=====================', 'info');

    const files = this.scanDirectory(this.rootPath);
    this.log(`Scanned ${files.length} files`, 'info');

    let processed = 0;
    const total = files.length;

    for (const file of files) {
      this.processFile(file);
      processed++;

      // 每处理100个文件报告一次
      if (processed % 100 === 0) {
        this.log(`Progress: ${processed}/${total} (${Math.round(processed/total*100)}%)`, 'info');
      }
    }

    // 最终统计
    this.log('\n=== Summary ===', 'info');
    this.log(`Scanned: ${this.stats.scanned} files`, 'info');
    this.log(`Moved: ${this.stats.moved}`, 'success');
    this.log(`Copied: ${this.stats.copied}`, 'success');
    this.log(`Skipped: ${this.stats.skipped}`, 'warning');
    this.log(`Errors: ${this.stats.errors}`, 'error');

    return this.stats;
  }

  // 日志输出
  log(message, level = 'info') {
    const timestamp = new Date().toLocaleString();
    const prefix = `[${timestamp}] [${level.toUpperCase()}]`;

    switch (level) {
      case 'success':
        console.log(`${prefix} ✅ ${message}`);
        break;
      case 'warning':
        console.log(`${prefix} ⚠️  ${message}`);
        break;
      case 'error':
        console.error(`${prefix} ❌ ${message}`);
        break;
      default:
        console.log(`${prefix} ℹ️  ${message}`);
    }
  }
}

// 命令行接口
function main() {
  const args = process.argv.slice(2);

  if (args.length === 0) {
    console.log(`
File Organizer v1.0.0

Usage:
  node file-organizer.js <directory> [options]

Options:
  --dry-run    预览模式，不实际移动文件
  --verbose    详细输出
  --copy       复制而不是移动文件
  --confirm    需要确认每个操作

Examples:
  node file-organizer.js ~/Downloads
  node file-organizer.js ~/Downloads --dry-run
  node file-organizer.js ~/Downloads --copy
    `);
    process.exit(1);
  }

  const rootPath = args[0];
  const options = {
    dryRun: args.includes('--dry-run'),
    verbose: args.includes('--verbose'),
    copy: args.includes('--copy'),
    confirm: args.includes('--confirm')
  };

  const organizer = new FileOrganizer(rootPath, options);
  organizer.organize();
}

// 运行
if (require.main === module) {
  main();
}

module.exports = { FileOrganizer, CONFIG };
