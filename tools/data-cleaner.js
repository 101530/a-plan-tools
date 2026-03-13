#!/usr/bin/env node

/**
 * 数据清洗工具
 * 清理JSON数据中的无效字段和空值
 */

const fs = require('fs');
const path = require('path');

// 配置
const config = {
  inputFile: process.argv[2],
  outputFile: process.argv[3],
  removeEmpty: process.argv.includes('--remove-empty'),
  removeNull: process.argv.includes('--remove-null')
};

// 清洗数据
function cleanData(data) {
  if (Array.isArray(data)) {
    return data.map(cleanData);
  }

  if (typeof data === 'object' && data !== null) {
    const cleaned = {};
    for (const [key, value] of Object.entries(data)) {
      // 跳过空字符串
      if (config.removeEmpty && value === '') {
        continue;
      }

      // 跳过null值
      if (config.removeNull && value === null) {
        continue;
      }

      cleaned[key] = cleanData(value);
    }
    return cleaned;
  }

  return data;
}

// 处理文件
function processFile(inputPath, outputPath) {
  try {
    // 读取文件
    const content = fs.readFileSync(inputPath, 'utf8');
    const data = JSON.parse(content);

    // 清洗数据
    const cleaned = cleanData(data);

    // 写入文件
    fs.writeFileSync(outputPath, JSON.stringify(cleaned, null, 2));

    console.log(`✅ 数据清洗完成`);
    console.log(`   输入: ${inputPath}`);
    console.log(`   输出: ${outputPath}`);
    console.log(`   数据已保存`);

  } catch (error) {
    console.error(`❌ 错误: ${error.message}`);
    process.exit(1);
  }
}

// 使用说明
function showUsage() {
  console.log(`
数据清洗工具
用法: node data-cleaner.js <input.json> [output.json] [--remove-empty] [--remove-null]

选项:
  --remove-empty    移除空字符串字段
  --remove-null     移除null值字段
  --help            显示此帮助信息

示例:
  node data-cleaner.js data.json cleaned.json --remove-empty --remove-null
  node data-cleaner.js data.json --dry-run
  `);
}

// 主函数
function main() {
  if (config.inputFile === '--help' || process.argv.includes('-h')) {
    showUsage();
    return;
  }

  if (!config.inputFile) {
    console.error('❌ 错误: 请提供输入文件');
    showUsage();
    process.exit(1);
  }

  const outputPath = config.outputFile || config.inputFile.replace('.json', '-cleaned.json');
  processFile(config.inputFile, outputPath);
}

// 运行
main();
