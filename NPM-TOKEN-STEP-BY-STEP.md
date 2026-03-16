# npm 访问令牌 - 详细创建步骤

## 📋 准备工作

1. 打开浏览器
2. 确保已登录 npm（用户名：tianyaduan）
3. 准备好复制粘贴

---

## 📝 第 1 步：访问令牌页面

### 1.1 打开 npm 网站访问令牌页面

在浏览器地址栏输入：
```
https://www.npmjs.com/settings/tianyaduan/tokens
```

### 1.2 确认页面显示

页面应该显示：
- **User:** `tianyaduan`
- **Tokens:** 列表（可能为空或已有令牌）

---

## 📝 第 2 步：点击 "Add token"

### 2.1 找到按钮

在页面顶部或中间位置，找到并点击：
- **"Add token"** 按钮

**按钮位置示例：**
```
┌─────────────────────────────────────┐
│  Settings for tianyaduan            │
│  ┌─────────────────────────────────┐│
│  │  [ Add token ]  ← 点击这里      ││
│  └─────────────────────────────────┘│
└─────────────────────────────────────┘
```

### 2.2 确认对话框出现

点击后应该弹出对话框，包含以下字段：
- Token name
- Select permissions
- Expiration

---

## 📝 第 3 步：填写令牌信息

### 3.1 输入令牌名称

在 **"Token name"** 字段输入：
```
a-plan-tools-publish
```

**示例：**
```
┌─────────────────────────────────────┐
│  Token name                          │
│  [a-plan-tools-publish     ]        │
└─────────────────────────────────────┘
```

### 3.2 选择权限

在 **"Select permissions"** 下拉菜单选择：
```
publish
```

**示例：**
```
┌─────────────────────────────────────┐
│  Select permissions                 │
│  [publish               ▼]         │
└─────────────────────────────────────┘
```

### 3.3 选择有效期

在 **"Expiration"** 下拉菜单选择：
```
Forever
```

**示例：**
```
┌─────────────────────────────────────┐
│  Expiration                          │
│  [Forever               ▼]         │
└─────────────────────────────────────┘
```

---

## 📝 第 4 步：创建令牌

### 4.1 点击 "Add token" 按钮

确认填写正确后，点击：
- **"Add token"** 按钮

---

## 📝 第 5 步：复制令牌（重要！）

### 5.1 立即复制令牌

系统会显示令牌字符串，**立即复制**：

```
npm_1234567890abcdefghijklmnopqrstuvwxyz
```

**复制方法：**
- 鼠标右键 → 选择 "Copy"
- 或选中后按 Ctrl+C

### 5.2 保存令牌

将令牌粘贴到：
- 记事本
- 文档
- 密码管理器

**⚠️ 重要：**
- 令牌只显示一次！
- 如果丢失需要重新创建
- 不要分享给任何人

---

## 📝 第 6 步：使用令牌登录

### 6.1 打开终端

打开命令提示符或 PowerShell

### 6.2 执行登录命令

```bash
npm login --auth-type=legacy
```

### 6.3 输入用户名

提示：
```
Username: 
```

输入：
```
tianyaduan
```

按回车

### 6.4 输入令牌

提示：
```
Password: 
```

粘贴你的令牌（Ctrl+V）

按回车

### 6.5 输入邮箱

提示：
```
Email: (this IS public)
```

输入你的 npm 邮箱

按回车

### 6.6 确认令牌

提示：
```
Password again: 
```

再次粘贴令牌

按回车

### 6.7 验证登录

```bash
npm whoami
```

应该显示：
```
tianyaduan
```

---

## 📝 第 7 步：发布包

### 7.1 进入项目目录

```bash
cd a-plan-tools
```

### 7.2 发布 data-cleaner

```bash
npm publish data-cleaner
```

应该显示：
```
+ data-cleaner@1.0.0
```

### 7.3 验证发布

访问：
```
https://www.npmjs.com/package/data-cleaner
```

---

## 📊 完成检查清单

创建令牌：
- [ ] 访问令牌页面
- [ ] 点击 "Add token"
- [ ] 输入名称：`a-plan-tools-publish`
- [ ] 选择权限：`publish`
- [ ] 选择有效期：`Forever`
- [ ] 点击 "Add token"
- [ ] 复制令牌

登录 npm：
- [ ] 执行 `npm login --auth-type=legacy`
- [ ] 输入用户名：`tianyaduan`
- [ ] 输入令牌
- [ ] 输入邮箱
- [ ] 确认令牌
- [ ] 执行 `npm whoami`（应显示 `tianyaduan`）

发布包：
- [ ] 执行 `cd a-plan-tools`
- [ ] 执行 `npm publish data-cleaner`
- [ ] 访问 npmjs.com 验证

---

## 🎯 总结

### 创建令牌需要：

1. 访问：https://www.npmjs.com/settings/tianyaduan/tokens
2. 点击：**"Add token"**
3. 填写：
   - 名称：`a-plan-tools-publish`
   - 权限：`publish`
   - 有效期：`Forever`
4. 点击：**"Add token"**
5. 复制：令牌字符串（只显示一次！）

### 使用令牌需要：

1. 执行：`npm login --auth-type=legacy`
2. 输入：
   - Username: `tianyaduan`
   - Password: `粘贴令牌`
   - Email: `你的邮箱`
   - Confirm: `粘贴令牌`

### 发布包需要：

1. 执行：`cd a-plan-tools`
2. 执行：`npm publish data-cleaner`

---

**创建时间：** 2026-03-14 19:39
**用户名：** tianyaduan
**状态：** ⏳ 等待创建令牌
