# npm 登录 - 使用新令牌

## 📋 当前状态

✅ 新令牌已创建
⏳ 需要配置新令牌到 npm

---

## 🔐 配置新令牌

### 步骤 1：配置令牌

打开终端，执行：

```bash
npm config set //registry.npmjs.org/:_authToken npm_你的新令牌
```

**示例：**
```bash
npm config set //registry.npmjs.org/:_authToken npm_abcdefghijklmnopqrstuvwxyz1234567890
```

### 步骤 2：验证登录

```bash
npm whoami
```

应该显示：`tianyaduan`

### 步骤 3：发布包

```bash
cd a-plan-tools
npm publish data-cleaner
```

应该显示：`+ data-cleaner@4.4.1`

---

## ⚠️ 重要

新令牌只显示一次，请立即复制并保存。

---

**状态：** ⏳ 等待配置新令牌
