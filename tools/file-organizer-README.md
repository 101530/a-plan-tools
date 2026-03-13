# 文件整理工具

自动按类型整理文件到指定文件夹的命令行工具。

## 功能

- 📁 自动识别文件类型
- 🎯 按类型分类整理
- 🚀 快速执行
- 🔍 预览模式（dry-run）

## 安装

```bash
npm install -g file-organizer
```

## 使用

### 整理当前目录
```bash
organize
```

### 整理指定目录
```bash
organize /path/to/directory
```

### 预览（不实际移动文件）
```bash
organize --dry-run
```

### 预览指定目录
```bash
organize /path/to/directory --dry-run
```

## 支持的文件类型

- **图片**: jpg, jpeg, png, gif, bmp, svg, webp
- **文档**: pdf, doc, docx, txt, rtf, odt, xls, xlsx
- **视频**: mp4, avi, mkv, mov, wmv, flv, webm
- **音频**: mp3, wav, flac, aac, ogg, m4a
- **压缩**: zip, rar, 7z, tar, gz
- **代码**: js, py, html, css, json, md, java, cpp, c

## 输出

文件将被整理到以下文件夹结构：

```
your-directory/
├── images/
├── documents/
├── videos/
├── audio/
├── archives/
└── code/
```

## 许可证

MIT License
