# npm 发布指南

## 📋 准备工作

### 1. 注册 npm 账号

如果还没有 npm 账号，需要先注册：

```bash
npm adduser
```

按照提示输入：
- Username（用户名）
- Password（密码）
- Email（邮箱）
- 确认密码

### 2. 验证登录

```bash
npm whoami
```

应该返回你的 npm 用户名。

## 🚀 发布步骤

### 方法 1：全局发布（推荐）

```bash
# 进入项目目录
cd a-plan-tools

# 发布 file-organizer
npm publish file-organizer

# 发布 data-cleaner
npm publish data-cleaner
```

### 方法 2：发布到 scoped registry（可选）

```bash
# 如果想使用 scoped 包名（如 @yourname/file-organizer）
npm publish --access public
```

## 📦 包说明

### file-organizer 包

- **包名**: file-organizer
- **版本**: 1.0.0
- **描述**: 自动整理文件到分类目录的 Node.js 工具
- **主要功能**:
  - 自动识别文件类型
  - 智能分类文件
  - 支持移动或复制模式
  - 预览模式

### data-cleaner 包

- **包名**: data-cleaner
- **版本**: 1.0.0
- **描述**: 自动清洗和标准化数据文件的 Node.js 工具
- **主要功能**:
  - 支持多种格式（CSV、JSON、XML、TSV）
  - 自动格式检测
  - 数据结构验证
  - 自动备份

## 💰 定价策略

### 基础版（免费）
- 包含所有功能
- MIT 许可证

### 专业版（$19.99/月）- 可选
- 高级分类规则
- 批量处理
- 优先支持

### 企业版（$49.99/月）- 可选
- 团队协作
- 自定义开发
- 专属支持

## 📊 发布后配置

### 1. 配置 npm 邮件通知

```bash
npm config set email your-email@example.com
```

### 2. 添加用户信息

```bash
npm config set init.author.name "Your Name"
npm config set init.author.email "your-email@example.com"
```

### 3. 创建 README

确保每个包都有 README.md 文件，包含：
- 包的描述
- 安装方法
- 使用示例
- 功能列表

## 🔧 常见问题

### Q: 发布失败怎么办？

A: 检查以下几点：
1. 是否已登录 npm：`npm whoami`
2. 包名是否被占用：检查 https://www.npmjs.com/
3. package.json 是否正确
4. 是否有 .npmignore 文件（可选）

### Q: 如何更新版本？

A:
```bash
# 更新版本号
npm version patch  # 1.0.0 -> 1.0.1
npm version minor  # 1.0.0 -> 1.1.0
npm version major  # 1.0.0 -> 2.0.0

# 发布更新
npm publish
```

### Q: 如何删除包？

A: ⚠️ **谨慎操作**，删除后无法恢复！

```bash
npm unpublish package-name --force
```

## 📈 发布后推广

### 1. 创建发布说明

```bash
# 创建 RELEASE.md
# 添加版本信息、功能更新、使用示例
```

### 2. 社交媒体推广

- Twitter/X
- Reddit
- GitHub
- Stack Overflow

### 3. SEO 优化

- 搜索 npm 包名
- 添加关键词
- 完善描述

## 🎯 后续优化

### 1. 添加测试

```bash
npm install --save-dev jest
npm test
```

### 2. 添加文档

- JSDoc 注释
- 使用示例
- API 文档

### 3. 添加 CI/CD

- GitHub Actions
- 自动测试
- 自动发布

## 📞 需要帮助？

- npm 文档：https://docs.npmjs.com/
- npm 发布指南：https://docs.npmjs.com/articles/creating-and-publishing-scoped-public-packages
- npm support：https://support.npmjs.com/

---

**版本:** 1.0.0
**创建日期:** 2026-03-14
**状态:** ⏳ 等待 npm 登录和发布
