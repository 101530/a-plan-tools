# A-Plan Tools FAQ

## 常见问题解答

### 1. A-Plan Tools 是什么？

**A-Plan Tools** 是一套实用的数字产品工具集，包含两个 Node.js 工具：

- **File Organizer** - 自动整理文件到分类目录
- **Data Cleaner** - 自动清洗和标准化数据文件

### 2. 如何安装 A-Plan Tools？

#### 方法 1：全局安装

```bash
# 克隆仓库
git clone https://github.com/101530/a-plan-tools.git
cd a-plan-tools

# 全局安装
npm install -g file-organizer data-cleaner
```

#### 方法 2：本地安装

```bash
# 克隆仓库
git clone https://github.com/101530/a-plan-tools.git
cd a-plan-tools

# 本地安装
npm install

# 使用工具
npx file-organizer ~/Downloads
npx data-cleaner data.csv
```

#### 方法 3：直接使用

```bash
# 克隆仓库
git clone https://github.com/101530/a-plan-tools.git
cd a-plan-tools

# 直接使用
node file-organizer.js ~/Downloads
node data-cleaner.js data.csv
```

### 3. File Organizer 支持哪些文件类型？

File Organizer 支持 7 大类别，每个类别有子分类：

- **images/** - wallpapers, screenshots, photos
- **videos/** - movies, tv-shows, recordings
- **audios/** - music, podcasts, recordings
- **documents/** - work, personal, contracts
- **archives/** - backup, downloads
- **installers/** - windows, macos, linux, mobile
- **misc/** - temp, trash

### 4. Data Cleaner 支持哪些格式？

Data Cleaner 支持 4 种数据格式：

- **CSV** - 逗号分隔值文件
- **TSV** - 制表符分隔值文件
- **JSON** - JavaScript 对象表示
- **XML** - 可扩展标记语言

### 5. 如何使用预览模式？

使用 `--dry-run` 参数可以预览将要执行的操作：

```bash
# File Organizer 预览
node file-organizer.js ~/Downloads --dry-run

# Data Cleaner 预览
node data-cleaner.js data.csv --dry-run
```

### 6. 如何选择移动或复制模式？

#### File Organizer

```bash
# 移动文件（默认）
node file-organizer.js ~/Downloads

# 复制文件
node file-organizer.js ~/Downloads --copy
```

#### Data Cleaner

Data Cleaner 默认会创建备份，不会修改原文件。使用 `--output` 参数输出到新文件：

```bash
# 输出到新文件
node data-cleaner.js data.csv --output cleaned.csv
```

### 7. 如何自定义分类规则？

编辑 `file-organizer.js` 中的 `CONFIG` 对象：

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

### 8. Data Cleaner 会修改原文件吗？

默认情况下，Data Cleaner 会：

1. 自动创建备份文件（.backup）
2. 不会修改原文件
3. 将清洗后的内容写入新文件（如果使用 --output）或覆盖原文件

### 9. 支持哪些操作系统？

A-Plan Tools 支持：

- **Windows** - Windows 10/11
- **macOS** - macOS 10.15+
- **Linux** - Ubuntu 18.04+, CentOS 7+

### 10. 需要安装其他依赖吗？

不需要。A-Plan Tools 使用 Node.js 原生模块，无需安装其他依赖。

### 11. 如何卸载 A-Plan Tools？

#### 全局安装

```bash
npm uninstall -g file-organizer data-cleaner
```

#### 本地安装

```bash
cd a-plan-tools
npm uninstall
```

### 12. 如何更新到最新版本？

```bash
# 更新 file-organizer
npm update -g file-organizer

# 更新 data-cleaner
npm update -g data-cleaner

# 或者重新克隆仓库
git clone https://github.com/101530/a-plan-tools.git
cd a-plan-tools
npm install
```

### 13. 如何报告问题？

在 GitHub 上提交 Issue：

1. 访问：https://github.com/101530/a-plan-tools/issues
2. 点击 "New Issue"
3. 填写问题详情
4. 提交 Issue

### 14. 如何贡献代码？

欢迎贡献！请遵循以下步骤：

1. Fork 仓库
2. 创建新分支：`git checkout -b feature/your-feature`
3. 提交修改：`git commit -m "Add your feature"`
4. 推送到分支：`git push origin feature/your-feature`
5. 创建 Pull Request

### 15. 支持中文吗？

是的！所有工具和文档都支持中文。

### 16. 如何获取帮助？

1. 查看文档：https://github.com/101530/a-plan-tools
2. 提交 Issue：https://github.com/101530/a-plan-tools/issues
3. 查看示例代码

### 17. 性能如何？

- **File Organizer**：整理 1000 个文件约需 10-30 秒
- **Data Cleaner**：清洗 1000 行数据约需 5-10 秒

性能取决于文件大小、数量和系统性能。

### 18. 可以用于商业项目吗？

可以。A-Plan Tools 使用 MIT 许可证，可以自由用于商业项目。

### 19. 如何贡献文档？

欢迎改进文档！请：

1. Fork 仓库
2. 编辑文档文件
3. 提交 Pull Request

### 20. 有命令行参数吗？

#### File Organizer

```bash
node file-organizer.js <directory> [options]

选项：
  --dry-run      预览模式
  --copy         复制而不是移动
  --verbose      详细输出
```

#### Data Cleaner

```bash
node data-cleaner.js <file> [options]

选项：
  --dry-run      预览模式
  --verbose      详细输出
  --output <file> 输出到新文件
  --no-backup    不创建备份
```

### 21. 如何查看版本？

```bash
# 查看版本
node file-organizer.js --version
node data-cleaner.js --version
```

### 22. 支持批量处理吗？

是的！

```bash
# 批量处理多个文件
node file-organizer.js ~/Downloads
node file-organizer.js ~/Documents
node file-organizer.js ~/Desktop
```

### 23. 如何获取更新通知？

关注 GitHub 仓库：
https://github.com/101530/a-plan-tools

### 24. 可以在 CI/CD 中使用吗？

可以！非常适合 CI/CD 流程：

```yaml
# GitHub Actions 示例
- name: Organize files
  run: node file-organizer.js ./project

- name: Clean data
  run: node data-cleaner.js data.csv
```

### 25. 有 GUI 界面吗？

目前只有命令行界面，但可以轻松集成到 GUI 应用中。

---

## 联系方式

- **GitHub**: https://github.com/101530/a-plan-tools
- **Issues**: https://github.com/101530/a-plan-tools/issues
- **Email**: (请通过 GitHub Issues 联系)

## 许可证

MIT License - 详见 LICENSE 文件

## 致谢

感谢所有贡献者和用户！
