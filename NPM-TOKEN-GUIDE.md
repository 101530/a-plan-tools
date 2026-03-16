# npm 访问令牌创建和使用指南

## 📋 当前状态

❌ **data-cleaner 发布需要 2FA**
✅ **file-organizer 已发布成功**

## 🔐 解决方案：使用访问令牌

---

## 📝 第一步：创建 npm 访问令牌

### 1.1 访问令牌页面

打开浏览器，访问：
```
https://www.npmjs.com/settings/tianyaduan/tokens
```

### 1.2 点击 "Add token"

在页面上找到并点击：
- **"Add token"** 按钮

### 1.3 选择权限

在弹出的对话框中：
- **Token name**：输入一个名称（如 `a-plan-tools-publish`）
- **Select permissions**：选择 `publish`

### 1.4 选择有效期

选择令牌的有效期：
- **Forever**（推荐）- 永久有效
- **Custom** - 自定义有效期
- **One year** - 1 年

### 1.5 创建令牌

点击 **"Add token"** 按钮

### 1.6 复制令牌

系统会显示一个令牌字符串（只显示一次！）：
```
npm_1234567890abcdefghijklmnopqrstuvwxyz
```

**⚠️ 重要：立即复制并保存这个令牌！**
- 只显示一次
- 如果丢失，需要重新创建
- 不要分享给任何人

---

## 🚀 第二步：使用令牌登录 npm

### 2.1 打开终端

打开命令提示符或 PowerShell

### 2.2 执行登录命令

```bash
npm login --auth-type=legacy
```

### 2.3 输入信息

按照提示输入：
1. **Username**：`tianyaduan`
2. **Password**：`粘贴你的令牌`

**注意：**
- 密码不会显示
- 粘贴后直接按回车
- 不要有空格

### 2.4 确认邮箱

输入邮箱地址：
- 输入你的 npm 邮箱
- 按回车确认

### 2.5 确认密码

再次输入令牌：
- 粘贴令牌
- 按回车确认

### 2.6 验证登录

```bash
npm whoami
```

**预期输出：**
```
tianyaduan
```

---

## 📦 第三步：发布 data-cleaner 包

### 3.1 进入项目目录

```bash
cd a-plan-tools
```

### 3.2 发布包

```bash
npm publish data-cleaner
```

**预期输出：**
```
+ data-cleaner@1.0.0
```

### 3.3 验证发布

访问：https://www.npmjs.com/package/data-cleaner

---

## ✅ 完成后

### 1. 验证两个包都已发布

- file-organizer：https://www.npmjs.com/package/file-organizer
- data-cleaner：https://www.npmjs.com/package/data-cleaner

### 2. 测试安装

```bash
# 全局安装
npm install -g file-organizer data-cleaner

# 使用工具
file-organizer ~/Downloads
data-cleaner data.csv
```

---

## 🔄 如果令牌丢失

### 重新创建令牌

1. 访问：https://www.npmjs.com/settings/tianyaduan/tokens
2. 点击 "Delete" 删除旧令牌
3. 重新按照第一步创建新令牌

### 重新登录

1. 执行：`npm logout`
2. 重新执行：`npm login --auth-type=legacy`
3. 输入新令牌

---

## 📊 时间线

- **创建令牌**：2-3 分钟
- **登录 npm**：1 分钟
- **发布包**：1-2 分钟

**总计：** 约 5 分钟

---

## 🎯 总结

### 需要做的步骤：

1. ✅ 访问令牌页面
2. ✅ 创建令牌
3. ✅ 复制令牌（重要！）
4. ✅ 使用令牌登录
5. ✅ 发布 data-cleaner

### 需要保存的信息：

- **令牌**：`npm_...`（只显示一次，立即复制）

### 需要输入的信息：

- **用户名**：`tianyaduan`
- **密码**：令牌
- **邮箱**：你的邮箱

---

**创建时间：** 2026-03-14 19:35
**用户名：** tianyaduan
**状态：** ⏳ 等待创建令牌
