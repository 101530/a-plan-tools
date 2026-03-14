# Data Cleaner - 数据清洗工具

## 🎯 功能介绍

Data Cleaner 是一个自动化的数据清洗和标准化工具，帮助您快速清理和规范化各种格式的数据文件。

## ✨ 核心功能

### 格式支持
- **CSV** - 处理逗号分隔值文件
- **TSV** - 处理制表符分隔值文件
- **JSON** - 处理 JavaScript 对象表示
- **XML** - 处理可扩展标记语言

### 清洗功能
- **自动检测**：自动识别文件格式
- **结构验证**：验证数据结构完整性
- **编码标准化**：统一文件编码
- **换行符统一**：标准化换行符格式
- **空行移除**：清理空行
- **空格处理**：去除行首尾空格

## 🚀 快速使用

### 基本用法
```bash
# 清洗 CSV 文件
node data-cleaner.js data.csv

# 清洗 JSON 文件
node data-cleaner.js data.json

# 清洗 XML 文件
node data-cleaner.js data.xml
```

### 高级选项

```bash
# 预览模式（不实际修改文件）
node data-cleaner.js data.csv --dry-run

# 详细输出
node data-cleaner.js data.json --verbose

# 清洗并输出到新文件
node data-cleaner.js data.csv --output cleaned.csv

# 不创建备份文件
node data-cleaner.js data.csv --no-backup
```

## 📊 CSV 清洗规则

### 支持的操作
- ✅ 去除行首尾空格
- ✅ 移除空行
- ✅ 统一换行符（\r\n → \n）
- ✅ 处理引号包裹的逗号
- ✅ 检测并修复编码问题

### 示例

**输入：**
```csv
  Name,   Age,   Email
  John Doe,  30,   john@example.com
  Jane Smith,  25, jane@example.com
```

**输出：**
```csv
Name,Age,Email
John Doe,30,john@example.com
Jane Smith,25,jane@example.com
```

## 📝 JSON 清洗规则

### 支持的操作
- ✅ 移除注释（// 和 /* */）
- ✅ 压缩空格（可选）
- ✅ 验证 JSON 结构
- ✅ 统一键名大小写（可选）

### 示例

**输入：**
```json
{
  // 这是一个注释
  "name": "John",
  "age"  : 30,
  "email": "john@example.com"
}
```

**输出：**
```json
{"name":"John","age":30,"email":"john@example.com"}
```

## 📑 XML 清洗规则

### 支持的操作
- ✅ 移除注释（<!-- -->）
- ✅ 压缩空格
- ✅ 验证 XML 结构
- ✅ 移除多余的空格

### 示例

**输入：**
```xml
<?xml version="1.0"?>
<!-- 注释 -->
<root>
  <item>  value  </item>
</root>
```

**输出：**
```xml
<?xml version="1.0"?>
<root><item>value</item></root>
```

## 🔄 工作流程

1. **格式检测**：自动识别文件格式
2. **文件备份**：自动创建备份文件（.backup）
3. **读取文件**：读取文件内容
4. **执行清洗**：根据格式执行相应的清洗规则
5. **验证结构**：验证清洗后的数据结构
6. **保存文件**：保存清洗后的文件
7. **生成报告**：输出详细的统计信息

## 📊 示例输出

```
=== Data Cleaner ===
File: /Users/username/data.csv
Format: csv
===================
[2026-03-14] [INFO] Backup created: /Users/username/data.csv.backup
[2026-03-14] [INFO] Read file: /Users/username/data.csv
[2026-03-14] [INFO] Size: 1024 bytes
[2026-03-14] [INFO] Format: csv
[2026-03-14] [SUCCESS] Saved to: /Users/username/data.csv

=== Summary ===
Scanned: 1 file
Cleaned: 1
Validated: 1
Errors: 0
Warnings: 0
```

## 💡 使用场景

- 清理下载的 CSV 文件
- 标准化 JSON 数据
- 优化 XML 配置文件
- 准备数据用于分析
- 清理从网页下载的表格数据

## ⚠️ 注意事项

- **重要文件**：清洗前会自动创建备份（.backup 文件）
- **预览模式**：首次使用建议使用 `--dry-run` 预览
- **验证**：清洗后会自动验证数据结构
- **格式**：确保文件格式正确，否则可能导致错误

## 🔧 配置

可以通过修改 `CONFIG` 对象来自定义清洗规则：

```javascript
const CONFIG = {
  formats: {
    csv: {
      trimLines: true,
      removeEmptyLines: true,
      normalizeLineEndings: true,
      handleQuotedCommas: true
    }
  },

  rules: {
    csv: {
      // 自定义 CSV 清洗规则
    }
  }
};
```

## 🤝 贡献

欢迎提交问题报告和功能建议！

## 📄 许可证

MIT License

---

**版本:** 1.0.0
**最后更新:** 2026-03-14
