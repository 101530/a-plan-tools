# GitHub仓库初始化指南

## 步骤1：创建GitHub仓库

### 方式1：通过GitHub网页
1. 访问 https://github.com/new
2. 填写仓库信息：
   - Repository name: `a-plan-tools`
   - Description: 两个实用的命令行工具，帮助你提高工作效率
   - Public/Private: Public（推荐）
   - 添加 .gitignore（可选）
   - 选择 License: MIT License
3. 点击 "Create repository"

### 方式2：通过GitHub CLI
```bash
# 安装GitHub CLI（如果未安装）
# Windows: winget install GitHub.cli
# Mac: brew install gh
# Linux: apt install gh

# 登录GitHub
gh auth login

# 创建仓库
gh repo create a-plan-tools --public --description "两个实用的命令行工具，帮助你提高工作效率" --license MIT
```

---

## 步骤2：初始化本地仓库

### Windows
```bash
cd C:\Users\15088\.openclaw\workspace
git init
git add .
git commit -m "Initial commit: A计划 - 数字产品集合"

# 添加远程仓库
git remote add origin https://github.com/yourusername/a-plan-tools.git

# 推送代码
git branch -M main
git push -u origin main
```

### Mac/Linux
```bash
cd ~/.openclaw/workspace
git init
git add .
git commit -m "Initial commit: A计划 - 数字产品集合"

# 添加远程仓库
git remote add origin https://github.com/yourusername/a-plan-tools.git

# 推送代码
git branch -M main
git push -u origin main
```

---

## 步骤3：配置GitHub Pages（可选）

1. 访问仓库设置：https://github.com/yourusername/a-plan-tools/settings/pages
2. Source选择：Deploy from a branch
3. Branch选择：main / (root)
4. 点击 Save

5. 访问你的网站：https://yourusername.github.io/a-plan-tools

---

## 步骤4：配置GitHub Actions（可选）

创建 `.github/workflows/deploy.yml`：

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Node
        uses: actions/setup-node@v4
        with:
          node-version: 18
          cache: 'npm'
          cache-dependency-path: '**/package-lock.json'

      - name: Install dependencies
        run: npm ci

      - name: Build
        run: npm run build

      - name: Setup Pages
        uses: actions/configure-pages@v4

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: './dist'

      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
```

---

## 步骤5：发布npm包（可选）

### 创建npm包配置

创建 `.npmignore`：
```
.git
.gitignore
.github
docs
*.md
!README.md
!LICENSE
```

### 发布包

```bash
# 登录npm
npm login

# 发布
npm publish
```

---

## 步骤6：配置README

确保仓库的README.md包含：
- 项目简介
- 功能列表
- 使用方法
- 安装命令
- 截图（如果有）
- 许可证信息

---

## 步骤7：配置徽章

在README.md顶部添加徽章：

```markdown
![Build Status](https://github.com/yourusername/a-plan-tools/actions/workflows/deploy.yml/badge.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Node.js](https://img.shields.io/badge/node-%3E%3D18.0.0-brightgreen.svg)
![npm](https://img.shields.io/badge/npm-%3E%3D9.0.0-blue.svg)
```

---

## 步骤8：配置Issues和PR模板

创建 `.github/ISSUE_TEMPLATE/bug_report.md`：

```markdown
---
name: Bug report
about: 报告一个bug
title: '[BUG] '
labels: bug
assignees: ''
---

**描述问题**

**复现步骤**
1.
2.
3.

**预期行为**

**实际行为**

**环境信息**
- OS: [e.g. Windows, macOS, Linux]
- Node.js version: [e.g. 18.0.0]
- npm version: [e.g. 9.0.0]

**日志输出**

**截图**

**附加信息**
```

---

## 完成检查清单

- [ ] 创建GitHub仓库
- [ ] 初始化本地Git仓库
- [ ] 提交所有文件
- [ ] 推送到GitHub
- [ ] 配置GitHub Pages（可选）
- [ ] 配置GitHub Actions（可选）
- [ ] 发布npm包（可选）
- [ ] 配置README
- [ ] 添加徽章
- [ ] 配置Issues模板
- [ ] 更新社交媒体

---

**预计完成时间**: 15-30分钟
**难度**: 简单
**需要权限**: GitHub账号

---

**开发者**: 龙虾
**版本**: 1.0.0
**发布日期**: 2026-03-13
