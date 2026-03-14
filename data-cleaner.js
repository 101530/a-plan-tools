#!/usr/bin/env node

/**
 * Data Cleaner Tool
 * 自动清洗和标准化数据
 * 版本: 1.0.0
 */

const fs = require('fs');
const path = require('path');

// 配置
const CONFIG = {
  // 数据格式识别
  formats: {
    csv: {
      extension: ['.csv'],
      delimiter: ',',
      headerDetection: true
    },
    json: {
      extension: ['.json'],
      validation: true
    },
    xml: {
      extension: ['.xml'],
      validation: true
    },
    tsv: {
      extension: ['.tsv'],
      delimiter: '\t',
      headerDetection: true
    }
  },

  // 清洗规则
  rules: {
    // CSV清洗
    csv: {
      // 去除行首尾空格
      trimLines: true,
      // 移除空行
      removeEmptyLines: true,
      // 统一换行符
      normalizeLineEndings: true,
      // 处理引号包裹的逗号
      handleQuotedCommas: true,
      // 检测并修复编码
      detectEncoding: true
    },

    // JSON清洗
    json: {
      // 移除注释
      removeComments: true,
      // 压缩空格
      minify: false,
      // 验证JSON结构
      validateStructure: true,
      // 统一键名大小写
      normalizeKeys: false
    },

    // XML清洗
    xml: {
      // 移除注释
      removeComments: true,
      // 压缩空格
      minify: true,
      // 验证XML结构
      validateStructure: true
    }
  },

  // 数据类型转换规则
  typeConversions: [
    {
      pattern: /^\s*(true|false)\s*$/i,
      target: 'boolean',
      transform: val => val.toLowerCase() === 'true'
    },
    {
      pattern: /^\s*(-?\d+)\s*$/,
      target: 'integer',
      transform: val => parseInt(val, 10)
    },
    {
      pattern: /^\s*(-?\d+\.\d+)\s*$/,
      target: 'number',
      transform: val => parseFloat(val)
    },
    {
      pattern: /^\s*(\d{4}-\d{2}-\d{2})\s*$/,
      target: 'date',
      transform: val => new Date(val)
    },
    {
      pattern: /^\s*(\d{2}:\d{2}(:\d{2})?)\s*$/,
      target: 'time',
      transform: val => val
    }
  ]
};

class DataCleaner {
  constructor(filePath, options = {}) {
    this.filePath = path.resolve(filePath);
    this.options = {
      dryRun: options.dryRun || false,
      verbose: options.verbose || false,
      format: options.format || null,
      output: options.output || null,
      backup: options.backup || true,
      ...options
    };
    this.stats = {
      scanned: 0,
      cleaned: 0,
      validated: 0,
      errors: 0,
      warnings: 0
    };
    this.format = this.detectFormat();
  }

  // 检测文件格式
  detectFormat() {
    const ext = path.extname(this.filePath).toLowerCase();

    for (const [name, format] of Object.entries(CONFIG.formats)) {
      if (format.extension.includes(ext)) {
        return { name, ...format };
      }
    }

    return { name: 'unknown', extension: ['.txt'], delimiter: null };
  }

  // 读取文件
  readFile() {
    try {
      const content = fs.readFileSync(this.filePath, 'utf8');
      this.stats.scanned++;

      if (this.options.verbose) {
        console.log(`Read file: ${this.filePath}`);
        console.log(`Size: ${content.length} bytes`);
        console.log(`Format: ${this.format.name}`);
      }

      return content;
    } catch (error) {
      this.stats.errors++;
      throw new Error(`Failed to read file: ${error.message}`);
    }
  }

  // 保存文件
  writeFile(content) {
    try {
      const outputPath = this.options.output || this.filePath;

      if (this.options.dryRun) {
        console.log(`[DRY RUN] Would write to: ${outputPath}`);
        console.log(`Content preview:\n${content.substring(0, 200)}...`);
        return;
      }

      fs.writeFileSync(outputPath, content, 'utf8');
      this.stats.cleaned++;
      this.log(`Saved to: ${outputPath}`, 'success');
    } catch (error) {
      this.stats.errors++;
      throw new Error(`Failed to write file: ${error.message}`);
    }
  }

  // 备份文件
  backupFile() {
    if (!this.options.backup || this.options.dryRun) return;

    try {
      const backupPath = `${this.filePath}.backup`;
      fs.copyFileSync(this.filePath, backupPath);
      this.log(`Backup created: ${backupPath}`, 'info');
    } catch (error) {
      this.stats.warnings++;
      this.log(`Backup failed: ${error.message}`, 'warning');
    }
  }

  // 清洗CSV
  cleanCSV(content) {
    const rules = CONFIG.rules.csv;
    let lines = content.split(/\r?\n/);

    // 移除空行
    if (rules.removeEmptyLines) {
      lines = lines.filter(line => line.trim().length > 0);
    }

    // 去除行首尾空格
    if (rules.trimLines) {
      lines = lines.map(line => line.trim());
    }

    // 统一换行符
    if (rules.normalizeLineEndings) {
      lines = lines.map(line => line.replace(/\r\n/g, '\n').replace(/\r/g, '\n'));
    }

    // 处理引号包裹的逗号
    if (rules.handleQuotedCommas) {
      lines = lines.map(line => {
        let inQuotes = false;
        let result = '';
        for (let i = 0; i < line.length; i++) {
          if (line[i] === '"') {
            inQuotes = !inQuotes;
          } else if (line[i] === ',' && !inQuotes) {
            result += '|'; // 使用分隔符代替逗号
          } else {
            result += line[i];
          }
        }
        return result;
      });
    }

    return lines.join('\n');
  }

  // 清洗JSON
  cleanJSON(content) {
    const rules = CONFIG.rules.json;

    // 移除注释
    if (rules.removeComments) {
      content = content.replace(/\/\/.*$/gm, '')
                       .replace(/\/\*[\s\S]*?\*\//g, '');
    }

    // 压缩空格
    if (rules.minify) {
      content = content.replace(/\s+/g, ' ')
                       .replace(/\s*([\{\[\]\}\:])\s*/g, '$1')
                       .replace(/,\s*([\}\]])/g, '$1');
    }

    // 验证JSON
    if (rules.validateStructure) {
      try {
        JSON.parse(content);
        this.stats.validated++;
      } catch (error) {
        this.stats.errors++;
        this.log(`JSON validation error: ${error.message}`, 'error');
      }
    }

    return content;
  }

  // 清洗XML
  cleanXML(content) {
    const rules = CONFIG.rules.xml;

    // 移除注释
    if (rules.removeComments) {
      content = content.replace(/<!--[\s\S]*?-->/g, '');
    }

    // 压缩空格
    if (rules.minify) {
      content = content.replace(/\s+/g, ' ')
                       .replace(/\s*([\{\[\]\}\:])\s*/g, '$1')
                       .replace(/>\s+</g, '><');
    }

    // 验证XML
    if (rules.validateStructure) {
      try {
        const parser = new DOMParser();
        const xmlDoc = parser.parseFromString(content, 'text/xml');

        if (xmlDoc.getElementsByTagName('parsererror').length > 0) {
          throw new Error('XML parsing error');
        }

        this.stats.validated++;
      } catch (error) {
        this.stats.errors++;
        this.log(`XML validation error: ${error.message}`, 'error');
      }
    }

    return content;
  }

  // 执行清洗
  clean() {
    this.log('=== Data Cleaner ===', 'info');
    this.log(`File: ${this.filePath}`, 'info');
    this.log(`Format: ${this.format.name}`, 'info');
    this.log('===================', 'info');

    // 备份文件
    this.backupFile();

    // 读取文件
    const content = this.readFile();

    // 根据格式清洗
    let cleanedContent;
    switch (this.format.name) {
      case 'csv':
        cleanedContent = this.cleanCSV(content);
        break;
      case 'json':
        cleanedContent = this.cleanJSON(content);
        break;
      case 'xml':
        cleanedContent = this.cleanXML(content);
        break;
      default:
        throw new Error(`Unsupported format: ${this.format.name}`);
    }

    // 保存结果
    this.writeFile(cleanedContent);

    // 最终统计
    this.log('\n=== Summary ===', 'info');
    this.log(`Scanned: ${this.stats.scanned} file`, 'info');
    this.log(`Cleaned: ${this.stats.cleaned}`, 'success');
    this.log(`Validated: ${this.stats.validated}`, 'success');
    this.log(`Errors: ${this.stats.errors}`, 'error');
    this.log(`Warnings: ${this.stats.warnings}`, 'warning');

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
Data Cleaner v1.0.0

Usage:
  node data-cleaner.js <file> [options]

Options:
  --dry-run    预览模式，不实际修改文件
  --verbose    详细输出
  --format <type>  强制指定格式 (csv, json, xml, tsv)
  --output <file>  输出到指定文件
  --no-backup    不创建备份文件

Examples:
  node data-cleaner.js data.csv
  node data-cleaner.js data.json --verbose
  node data-cleaner.js data.csv --output cleaned.csv
    `);
    process.exit(1);
  }

  const filePath = args[0];
  const options = {
    dryRun: args.includes('--dry-run'),
    verbose: args.includes('--verbose'),
    format: args.find(arg => arg.startsWith('--format='))?.split('=')[1] || null,
    output: args.find(arg => arg.startsWith('--output='))?.split('=')[1] || null,
    backup: !args.includes('--no-backup')
  };

  const cleaner = new DataCleaner(filePath, options);
  cleaner.clean();
}

// 运行
if (require.main === module) {
  main();
}

module.exports = { DataCleaner, CONFIG };
