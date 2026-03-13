# 数据清洗工具

清理JSON数据中的无效字段和空值的命令行工具。

## 功能

- 🧹 清理JSON数据
- 🗑️ 移除空字符串字段
- 🗑️ 移除null值字段
- 📁 支持批量处理
- 🚀 快速执行

## 使用方法

### 基本用法
```bash
node data-cleaner.js input.json output.json
```

### 移除空字符串
```bash
node data-cleaner.js input.json output.json --remove-empty
```

### 移除null值
```bash
node data-cleaner.js input.json output.json --remove-null
```

### 移除空字符串和null值
```bash
node data-cleaner.js input.json output.json --remove-empty --remove-null
```

### 使用说明
```bash
node data-cleaner.js --help
```

## 示例

### 输入数据 (input.json)
```json
{
  "name": "John",
  "age": null,
  "email": "",
  "city": "New York",
  "address": null
}
```

### 执行清理
```bash
node data-cleaner.js input.json output.json --remove-empty --remove-null
```

### 输出数据 (output.json)
```json
{
  "name": "John",
  "city": "New York"
}
```

## 适用场景

- API数据清理
- 数据库导出数据清洗
- 配置文件优化
- 数据预处理
- 数据分析前清洗

## 特性

- 自动格式化输出（缩进2空格）
- 支持嵌套JSON对象
- 保持原始数据结构
- 错误处理
- 详细日志

## 许可证

MIT License
