#!/usr/bin/env node

/**
 * 文件整理工具
 * 自动按类型整理文件到指定文件夹
 */

const fs = require('fs');
const path = require('path');

// 配置
const config = {
  sourceDir: process.argv[2] || '.',
  organize: true,
  dryRun: process.argv.includes('--dry-run')
};

// 文件类型映射
const fileTypeGroups = {
  images: ['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.svg', '.webp'],
  documents: ['.pdf', '.doc', '.docx', '.txt', '.rtf', '.odt', '.xls', '.xlsx'],
  videos: ['.mp4', '.avi', '.mkv', '.mov', '.wmv', '.flv', '.webm'],
  audio: ['.mp3', '.wav', '.flac', '.aac', '.ogg', '.m4a'],
  archives: ['.zip', '.rar', '.7z', '.tar', '.gz'],
  code: ['.js', '.py', '.html', '.css', '.json', '.md', '.java', '.cpp', '.c'],
  others: []
};

// 获取文件类型
function getFileType(filename) {
  const ext = path.extname(filename).toLowerCase();
  for (const [type, extensions] of Object.entries(fileTypeGroups)) {
    if (extensions.includes(ext)) {
      return type;
    }
  }
  return 'others';
}

// 整理文件
async function organizeFiles() {
  try {
    // 检查源目录
    if (!fs.existsSync(config.sourceDir)) {
      console.error(`❌ 目录不存在: ${config.sourceDir}`);
      process.exit(1);
    }

    console.log(`📂 源目录: ${config.sourceDir}`);
    console.log(`🔍 开始扫描...`);

    // 读取目录
    const files = fs.readdirSync(config.sourceDir, { withFileTypes: true });

    // 统计
    const stats = {
      total: files.length,
      organized: 0,
      skipped: 0
    };

    // 整理每个文件
    for (const file of files) {
      if (file.isDirectory()) continue;

      const filePath = path.join(config.sourceDir, file.name);
      const fileType = getFileType(file.name);

      if (config.dryRun) {
        console.log(`[DRY-RUN] ${file.name} -> ${fileType}`);
        stats.organized++;
        continue;
      }

      const targetDir = path.join(config.sourceDir, fileType);
      const targetPath = path.join(targetDir, file.name);

      // 创建目标目录
      if (!fs.existsSync(targetDir)) {
        fs.mkdirSync(targetDir, { recursive: true });
      }

      // 移动文件
      fs.renameSync(filePath, targetPath);
      stats.organized++;
      console.log(`✅ ${file.name} -> ${fileType}/`);
    }

    // 显示结果
    console.log('\n📊 整理完成:');
    console.log(`   总文件数: ${stats.total}`);
    console.log(`   已整理: ${stats.organized}`);
    console.log(`   跳过: ${stats.skipped}`);
    console.log(`   目标目录: ${config.sourceDir}`);

  } catch (error) {
    console.error(`❌ 错误: ${error.message}`);
    process.exit(1);
  }
}

// 运行
organizeFiles();
