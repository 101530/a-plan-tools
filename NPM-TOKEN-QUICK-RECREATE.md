# npm 令牌重新创建 - 快速步骤

## 📝 9 步完成发布

### 第 1 步：访问令牌页面
```
https://www.npmjs.com/settings/tianyaduan/tokens
```

### 第 2 步：删除旧令牌
点击旧令牌右侧的 **"Delete"**

### 第 3 步：点击 "Add token"

### 第 4 步：填写信息
- Token name: `a-plan-tools-publish`
- Select permissions: `publish`
- **勾选 "bypass 2fa"** ⚠️
- Expiration: `Forever`

### 第 5 步：点击 "Add token"

### 第 6 步：复制新令牌（重要！）
- 只显示一次！
- 立即复制并保存

### 第 7 步：更新令牌配置
```bash
npm config set //registry.npmjs.org/:_authToken npm_你的新令牌
```

### 第 8 步：验证登录
```bash
npm whoami
```
应显示：`tianyaduan`

### 第 9 步：发布包
```bash
cd a-plan-tools
npm publish data-cleaner
```
应显示：`+ data-cleaner@4.4.1`

---

## ⚠️ 重要提示

1. **必须勾选 bypass 2fa**
   - 否则无法发布包

2. **令牌只显示一次**
   - 立即复制并保存
   - 丢失需要重新创建

3. **更新令牌配置**
   - 必须执行 `npm config set` 命令
   - 否则无法发布

---

## 📊 完成检查清单

- [ ] 访问令牌页面
- [ ] 删除旧令牌
- [ ] 点击 "Add token"
- [ ] 输入名称：`a-plan-tools-publish`
- [ ] 选择权限：`publish`
- [ ] **勾选 bypass 2fa** ⚠️
- [ ] 选择有效期：`Forever`
- [ ] 点击 "Add token"
- [ ] 复制新令牌（重要！）
- [ ] 更新令牌配置
- [ ] 验证登录
- [ ] 发布包
- [ ] 验证发布

---

**预计时间：** 5 分钟
**状态：** ⏳ 等待重新创建令牌
