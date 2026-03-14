# GitHub Pages 配置指南

## 📋 配置步骤

### 1. 进入 GitHub 仓库设置

1. 访问仓库：https://github.com/101530/a-plan-tools
2. 点击 **Settings** 标签
3. 在左侧菜单中找到 **Pages**

### 2. 配置 GitHub Pages

#### 选择分支
- **Source**: Deploy from a branch
- **Branch**: `main` / `root`

#### 启用 GitHub Pages
- 点击 **Save** 按钮
- 等待 1-2 分钟，GitHub Pages 会自动部署

### 3. 验证部署

访问以下 URL：
```
https://101530.github.io/a-plan-tools/
```

### 4. 自定义域名（可选）

如果需要自定义域名：
1. 在仓库设置中添加自定义域名
2. 配置 DNS 记录（CNAME）
3. 启用 HTTPS

## 🎨 GitHub Pages 主题

### 推荐主题

1. **Jekyll**（默认）
   - 简单易用
   - 支持 Markdown
   - 免费托管

2. **Next.js**
   - 现代 React 框架
   - 更好的性能
   - 更多的定制选项

3. **VitePress**
   - Vue 驱动
   - 快速加载
   - 美观的文档主题

### 选择主题

**推荐使用 Jekyll**（默认）：
- 配置简单
- 无需额外构建
- 兼容性好

## 📝 GitHub Pages 配置示例

### 使用 Jekyll

创建 `Gemfile`：
```ruby
source "https://rubygems.org"

gem "github-pages", group: :jekyll_plugins
```

创建 `_config.yml`：
```yaml
title: "A-Plan Tools"
description: "实用数字产品工具集 - 提高工作效率，自动化文件整理和数据清洗"
baseurl: "/a-plan-tools"  # 如果使用自定义域名，可以留空
theme: minima
```

## 🚀 部署步骤

1. **添加文件**
   - 将 `README.md` 或 `GITHUB-README.md` 作为主页
   - 确保文件名为 `index.md` 或 `index.html`

2. **推送到 GitHub**
   ```bash
   git add README.md
   git commit -m "Update README for GitHub Pages"
   git push
   ```

3. **等待部署**
   - GitHub Pages 会自动检测并部署
   - 通常需要 1-2 分钟

4. **访问页面**
   ```
   https://101530.github.io/a-plan-tools/
   ```

## 🔧 故障排除

### 部署失败

1. **检查日志**
   - 访问仓库的 Actions 标签
   - 查看 Pages 部署日志

2. **常见问题**
   - 文件名错误：应该是 `index.md` 或 `index.html`
   - 配置错误：检查 `_config.yml` 语法
   - 权限问题：确保仓库是公开的

### 页面显示错误

1. **清除缓存**
   - 等待 5-10 分钟
   - 刷新浏览器

2. **检查文件**
   - 确认文件已正确上传
   - 检查文件权限

## 📊 监控和优化

### 性能监控

1. **使用 Lighthouse**
   - Chrome DevTools
   - 测试页面性能

2. **GitHub Pages 性能**
   - 自动 CDN 分发
   - 全球加速

### SEO 优化

1. **Meta 标签**
   - 添加描述、关键词
   - 设置 Open Graph

2. **Sitemap**
   - 生成 XML sitemap
   - 提交到 Google Search Console

## 📞 支持

- GitHub Pages 文档：https://docs.github.com/pages
- Jekyll 文档：https://jekyllrb.com/docs/
- GitHub 支持：https://support.github.com/

---

**版本:** 1.0.0
**创建日期:** 2026-03-14
