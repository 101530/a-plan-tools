# npm 登录注册 - 使用指南

## 📋 当前状态

❌ **未登录 npm**

## 🔐 执行登录

### 方法 1：使用 PowerShell 脚本（推荐）

1. **打开 PowerShell**
   - 按 `Win + X`，选择 "Windows PowerShell" 或 "终端"

2. **执行脚本**
   ```powershell
   cd a-plan-tools
   .\npm-login.ps1
   ```

3. **输入信息**
   - Username: `tianyaduan`
   - Password: （输入你的密码）
   - Email: （输入你的邮箱）
   - 确认密码: （再次输入密码）

4. **验证登录**
   - 脚本会自动验证登录
   - 如果成功，会显示用户名

### 方法 2：使用批处理脚本

1. **打开命令提示符**
   - 按 `Win + R`，输入 `cmd`，按回车

2. **执行脚本**
   ```cmd
   cd a-plan-tools
   npm-login.bat
   ```

3. **输入信息**
   - Username: `tianyaduan`
   - Password: （输入你的密码）
   - Email: （输入你的邮箱）
   - 确认密码: （再次输入密码）

4. **验证登录**
   - 脚本会自动验证登录
   - 如果成功，会显示用户名

### 方法 3：手动执行

1. **执行登录命令**
   ```bash
   npm login
   ```

2. **输入信息**
   - Username: `tianyaduan`
   - Password: （输入你的密码）
   - Email: （输入你的邮箱）
   - 确认密码: （再次输入密码）

3. **验证登录**
   ```bash
   npm whoami
   ```

**预期输出：**
```
tianyaduan
```

## ✅ 登录成功后的操作

### 1. 发布 file-organizer 包

```bash
cd a-plan-tools
npm publish file-organizer
```

**预期输出：**
```
+ file-organizer@1.0.0
```

### 2. 发布 data-cleaner 包

```bash
npm publish data-cleaner
```

**预期输出：**
```
+ data-cleaner@1.0.0
```

### 3. 验证发布

- 访问：https://www.npmjs.com/package/file-organizer
- 访问：https://www.npmjs.com/package/data-cleaner

## 📊 登录注册时间线

- **步骤 1**：执行登录脚本 - 2 分钟
- **步骤 2**：输入信息 - 1 分钟
- **步骤 3**：验证登录 - 1 分钟
- **步骤 4**：发布 file-organizer - 2 分钟
- **步骤 5**：发布 data-cleaner - 2 分钟

**总计：** 约 8 分钟

## 📝 注意事项

1. **密码安全**
   - 密码不会显示在屏幕上
   - 输入后直接按回车
   - 不要在公共终端中输入密码

2. **邮箱验证**
   - 确保输入正确的邮箱
   - 邮箱会用于接收 npm 通知

3. **用户名**
   - 用户名是 `tianyaduan`
   - 不要修改

4. **登录状态**
   - 登录成功后，凭据会保存在本地
   - 下次使用不需要重新登录

## 🔄 如果登录失败

### 常见问题

1. **用户名或密码错误**
   - 检查用户名：`tianyaduan`
   - 重新输入密码

2. **网络问题**
   - 检查网络连接
   - 尝试使用 VPN

3. **npm 服务问题**
   - 访问 https://status.npmjs.com
   - 等待服务恢复

### 解决方法

```bash
# 清除 npm 缓存
npm cache clean --force

# 重新登录
npm login
```

## 📞 需要帮助？

- npm 文档：https://docs.npmjs.com/
- npm 支持：https://support.npmjs.com/
- npm 状态：https://status.npmjs.com/

---

**创建时间：** 2026-03-14 15:53
**用户名：** tianyaduan
**状态：** ⏳ 等待执行登录
