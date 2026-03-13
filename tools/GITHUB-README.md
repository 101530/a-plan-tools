# A计划 - 数字产品集合

两个实用的命令行工具，帮助你提高工作效率。

## 📦 产品1：文件整理工具

自动按类型整理文件到指定文件夹的命令行工具。

### 功能
- 📁 自动识别文件类型
- 🎯 按类型分类整理
- 🚀 一键执行
- 🔍 预览模式（--dry-run）

### 使用方法
```bash
# 全局安装
npm install -g file-organizer

# 整理当前目录
organize

# 整理指定目录
organize /path/to/directory

# 预览（不实际移动文件）
organize --dry-run
```

### 支持的文件类型
- 图片: jpg, jpeg, png, gif, bmp, svg, webp
- 文档: pdf, doc, docx, txt, rtf, odt, xls, xlsx
- 视频: mp4, avi, mkv, mov, wmv, flv, webm
- 音频: mp3, wav, flac, aac, ogg, m4a
- 压缩: zip, rar, 7z, tar, gz
- 代码: js, py, html, css, json, md, java, cpp, c

### 输出结构
```
your-directory/
├── images/
├── documents/
├── videos/
├── audio/
├── archives/
└── code/
```

## 🧹 产品2：数据清洗工具

清理JSON数据中的无效字段和空值的命令行工具。

### 功能
- 🧹 清理JSON数据
- 🗑️ 移除空字符串字段
- 🗑️ 移除null值字段
- 📁 支持批量处理
- 🚀 快速执行

### 使用方法
```bash
# 基本用法
node data-cleaner.js input.json output.json

# 移除空字符串和null值
node data-cleaner.js input.json output.json --remove-empty --remove-null

# 查看帮助
node data-cleaner.js --help
```

### 适用场景
- API数据清理
- 数据库导出数据清洗
- 配置文件优化
- 数据预处理
- 数据分析前清洗

## 🚀 快速开始

### 安装所有工具
```bash
# 克隆仓库
git clone https://github.com/yourusername/your-repo.git
cd your-repo

# 安装产品1
cd tools/file-organizer
npm install -g .

# 安装产品2
cd ../data-cleaner
npm install -g .
```

### 使用示例

#### 文件整理工具
```bash
# 整理桌面文件
organize ~/Desktop

# 预览整理结果
organize ~/Downloads --dry-run
```

#### 数据清洗工具
```bash
# 清理API返回的数据
node data-cleaner.js api-response.json cleaned.json --remove-empty --remove-null
```

## 📖 文档

- [文件整理工具文档](tools/file-organizer/README.md)
- [数据清洗工具文档](tools/data-cleaner-README.md)
- [发布说明](tools/RELEASE.md)
- [更新日志](tools/CHANGELOG.md)

## 🎯 使用场景

### 文件整理工具适用场景
- 整理下载文件夹
- 分类照片和文档
- 整理代码项目
- 批量整理文件

### 数据清洗工具适用场景
- API数据清理
- 数据库导出数据清洗
- 配置文件优化
- 数据分析前预处理

## 💡 最佳实践

1. **使用预览模式**
   - 先用 `--dry-run` 预览操作
   - 确认无误后再执行

2. **定期使用**
   - 定期整理文件
   - 保持数据整洁

3. **备份重要文件**
   - 执行前备份重要数据
   - 使用版本控制管理代码

## 🔧 技术栈

- Node.js
- 命令行工具（CLI）
- 文件系统API
- JSON处理

## 📝 许可证

MIT License

## 👨‍💻 开发者

**龙虾**

## 📅 版本历史

- **1.0.0** (2026-03-13)
  - 初始版本发布
  - 文件整理工具
  - 数据清洗工具

## 🤝 贡献

欢迎提交Issue和Pull Request！

## 📧 联系方式

如有问题或建议，请通过GitHub Issues联系。

---

**版本**: 1.0.0
**发布日期**: 2026-03-13
