# npm 发布错误 - 需要两步验证

## ❌ 错误信息

```
npm error 403 403 Forbidden - PUT https://registry.npmjs.org/data-cleaner
npm error Two-factor authentication or granular access token with bypass 2fa enabled
npm error is required to publish packages.
```

## 🔐 问题原因

npm 要求两步验证（2FA）才能发布包。

## ✅ 解决方案

### 方案 1：启用两步验证（推荐）

1. **登录 npm**
   ```bash
   npm login
   ```

2. **按照提示启用 2FA**
   - 选择验证方式：
     - **Authenticator app**（推荐）
     - **SMS**
     - **Email**

3. **重新发布包**
   ```bash
   cd a-plan-tools
   npm publish data-cleaner
   ```

### 方案 2：使用访问令牌（需要 bypass 2FA）

1. **创建访问令牌**
   - 访问：https://www.npmjs.com/settings/tianyaduan/tokens
   - 点击 "Add token"
   - 选择权限：`publish`
   - 选择有效期：`Forever` 或自定义
   - 点击 "Add token"
   - 复制生成的令牌

2. **使用令牌登录**
   ```bash
   npm login --auth-type=legacy
   ```

3. **输入令牌**
   - Username: `tianyaduan`
   - Password: `粘贴你的令牌`

4. **重新发布包**
   ```bash
   cd a-plan-tools
   npm publish data-cleaner
   ```

### 方案 3：使用 scoped 包（临时方案）

如果不想启用 2FA，可以使用 scoped 包名：

```bash
cd a-plan-tools
npm publish data-cleaner --access public
```

包名会变成：`@tianyaduan/data-cleaner`

## 📊 当前状态

- ✅ file-organizer：1.0.2（已发布）
- ⏳ data-cleaner：4.4.0（已存在，需要重新发布）

## 🎯 下一步

1. **启用 2FA**（推荐）
   - 更安全
   - 可以发布到公共 registry

2. **使用访问令牌**
   - 需要创建令牌
   - 更快速

3. **使用 scoped 包**
   - 不需要 2FA
   - 但包名会改变

---

**错误时间：** 2026-03-14 18:31
**状态：** ⏳ 等待解决 2FA 问题
**用户名：** tianyaduan
