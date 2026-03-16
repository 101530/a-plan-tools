# File Organizer - 文件整理工具

## 🎯 功能介绍

File Organizer 是一个自动化的文件整理工具，帮助您快速整理文件到分类目录。

## ✨ 核心功能

### 自动分类
- **图片** - 自动移动到 images/ 目录
- **视频** - 自动移动到 videos/ 目录
- **音频** - 自动移动到 audios/ 目录
- **文档** - 自动移动到 documents/ 目录
- **PDF文件** - 自动移动到 documents/ 目录
- **压缩包** - 自动移动到 archives/ 目录

### 智能识别
- 基于文件扩展名自动分类
- 支持多种文件格式
- 可自定义分类规则

## 🚀 快速使用

### 基本用法
```bash
# 整理指定目录
node file-organizer.js /path/to/files

# 全局安装使用
npm install -g a-plan-tools-file-organizer
organize /path/to/files
```

### 高级选项

```bash
# 预览模式（不实际移动文件）
node file-organizer.js /path/to/files --dry-run

# 详细输出
node file-organizer.js /path/to/files --verbose

# 跳过备份
node file-organizer.js /path/to/files --no-backup

# 指定目标目录
node file-organizer.js /path/to/files --target /custom/path
```

## 📊 分类规则

### 默认规则
- **图片**：jpg, jpeg, png, gif, webp, svg, bmp
- **视频**：mp4, avi, mkv, mov, wmv, flv
- **音频**：mp3, wav, flac, aac, ogg, m4a
- **文档**：pdf, doc, docx, txt, rtf
- **压缩包**：zip, rar, 7z, tar, gz, bz2

### 自定义规则
可以通过修改代码中的 `CONFIG.rules` 来自定义分类规则：

```javascript
const CONFIG = {
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
    }
    // 添加更多规则...
  ]
};
```

## 🔄 工作流程

1. **扫描目录** - 读取指定目录中的所有文件
2. **文件识别** - 根据扩展名识别文件类型
3. **分类决策** - 应用分类规则决定目标目录
4. **文件移动** - 移动文件到目标目录
5. **生成报告** - 输出整理结果

## 📊 示例输出

```
=== File Organizer ===
Directory: /Users/username/Downloads
===================
[2026-03-14] [INFO] Scanning directory...
[2026-03-14] [INFO] Found 15 files
[2026-03-14] [INFO] Moving: photo.jpg → images/photo.jpg
[2026-03-14] [INFO] Moving: video.mp4 → videos/video.mp4
[2026-03-14] [INFO] Moving: document.pdf → documents/document.pdf
[2026-03-14] [INFO] Moving: archive.zip → archives/archive.zip
[2026-03-14] [SUCCESS] Finished! Moved 15 files

=== Summary ===
Scanned: 15 files
Moved: 15
Skipped: 0
Errors: 0
```

## 💡 使用场景

- 整理下载文件夹
- 自动分类照片和视频
- 组织项目文件
- 清理桌面和文档
- 自动归档旧文件

## ⚠️ 注意事项

- **重要文件**：默认会创建备份（.backup 文件）
- **预览模式**：首次使用建议使用 `--dry-run` 预览
- **权限**：确保有目标目录的写入权限
- **覆盖**：同名文件会被覆盖，建议先预览

## 🔧 配置

可以通过修改 `CONFIG` 对象来自定义行为：

```javascript
const CONFIG = {
  // 目标目录
  targetDir: './organized',

  // 是否创建备份
  createBackup: true,

  // 是否显示详细输出
  verbose: false,

  // 是否跳过空文件
  skipEmpty: false,

  // 自定义规则
  rules: [...]
};
```

## 🤝 贡献

欢迎提交问题报告和功能建议！

## 📄 许可证

MIT License

---

**版本:** 1.0.0
**最后更新:** 2026-03-14
