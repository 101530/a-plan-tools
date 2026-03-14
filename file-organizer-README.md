# File Organizer - 文件整理工具

## 🎯 功能介绍

File Organizer 是一个自动化文件整理工具，帮助您快速将混乱的文件分类到结构化的目录中。

## ✨ 核心功能

### 智能分类
- **自动识别**：根据文件名和扩展名自动分类
- **子分类支持**：支持多级子分类（如 images/wallpapers、videos/movies）
- **自定义规则**：可扩展的配置系统

### 灵活操作
- **移动或复制**：支持两种文件操作模式
- **预览模式**：Dry-run 模式查看将要执行的操作
- **详细日志**：实时显示操作进度和统计信息

## 🚀 快速使用

### 基本用法
```bash
# 整理指定目录
node file-organizer.js /path/to/your/files

# 整理 Downloads 目录
node file-organizer.js ~/Downloads
```

### 高级选项

```bash
# 预览模式（不实际移动文件）
node file-organizer.js ~/Downloads --dry-run

# 复制而不是移动
node file-organizer.js ~/Downloads --copy

# 详细输出
node file-organizer.js ~/Downloads --verbose
```

## 📁 支持的分类

### 1. images/ (图片)
- `wallpapers/` - 壁纸
- `screenshots/` - 截图
- `photos/` - 照片

### 2. videos/ (视频)
- `movies/` - 电影
- `tv-shows/` - 电视剧
- `recordings/` - 录制内容

### 3. audios/ (音频)
- `music/` - 音乐
- `podcasts/` - 播客
- `recordings/` - 录音

### 4. documents/ (文档)
- `work/` - 工作文档
- `personal/` - 个人文档
- `contracts/` - 合同文件

### 5. archives/ (压缩包)
- `backup/` - 备份文件
- `downloads/` - 下载的压缩包

### 6. installers/ (安装程序)
- `windows/` - Windows 安装程序
- `macos/` - macOS 安装程序
- `linux/` - Linux 安装程序
- `mobile/` - 移动应用安装包

### 7. misc/ (其他)
- `temp/` - 临时文件
- `trash/` - 垃圾文件

## 🎨 工作原理

1. **扫描目录**：递归扫描指定目录中的所有文件
2. **识别类型**：根据文件名和扩展名识别文件类型
3. **分类文件**：将文件移动到对应的分类目录
4. **创建子目录**：自动创建所需的子分类目录
5. **生成报告**：输出详细的操作统计信息

## 📊 示例输出

```
=== File Organizer ===
Scanning directory: /Users/username/Downloads
=====================
Created directory: /Users/username/Downloads/images/wallpapers
Created directory: /Users/username/Downloads/videos/movies
Moved: /Users/username/Downloads/photo.jpg → /Users/username/Downloads/images/wallpapers/photo.jpg
Moved: /Users/username/Downloads/document.pdf → /Users/username/Downloads/documents/work/document.pdf
...

=== Summary ===
Scanned: 150 files
Moved: 120
Copied: 0
Skipped: 25
Errors: 5
```

## 🔧 配置

可以通过修改 `CONFIG` 对象来自定义分类规则：

```javascript
const CONFIG = {
  rules: [
    {
      pattern: /your-pattern/i,
      target: 'your-category',
      action: 'move'
    }
  ],

  structure: {
    yourCategory: ['sub-category-1', 'sub-category-2']
  }
};
```

## 💡 使用场景

- 整理下载文件夹
- 分类媒体文件
- 组织项目文档
- 管理安装程序
- 备份前整理文件

## ⚠️ 注意事项

- 使用前建议先备份重要文件
- 在大目录上运行前建议使用 `--dry-run` 预览
- 确保有足够的磁盘空间

## 🤝 贡献

欢迎提交问题报告和功能建议！

## 📄 许可证

MIT License

---

**版本:** 1.0.0
**最后更新:** 2026-03-14
