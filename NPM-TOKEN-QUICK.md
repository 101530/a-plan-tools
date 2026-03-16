# npm 访问令牌 - 快速步骤

## 📝 5 步完成发布

### 第 1 步：创建令牌（2 分钟）

1. 访问：https://www.npmjs.com/settings/tianyaduan/tokens
2. 点击 **"Add token"**
3. 输入名称：`a-plan-tools-publish`
4. 选择权限：`publish`
5. 选择有效期：`Forever`
6. 点击 **"Add token"**
7. **立即复制令牌** ⚠️

### 第 2 步：登录 npm（1 分钟）

```bash
npm login --auth-type=legacy
```

输入：
- Username: `tianyaduan`
- Password: `粘贴你的令牌`
- Email: `你的邮箱`
- Confirm: `粘贴令牌`

### 第 3 步：验证登录（10 秒）

```bash
npm whoami
```

应该显示：`tianyaduan`

### 第 4 步：发布包（1 分钟）

```bash
cd a-plan-tools
npm publish data-cleaner
```

应该显示：`+ data-cleaner@1.0.0`

### 第 5 步：验证发布（10 秒）

访问：https://www.npmjs.com/package/data-cleaner

---

## ⚠️ 重要提示

1. **令牌只显示一次**
   - 立即复制并保存
   - 如果丢失需要重新创建

2. **密码不会显示**
   - 粘贴后直接按回车
   - 不要有空格

3. **验证登录**
   - 确保显示 `tianyaduan`
   - 否则重新登录

---

## 📊 完成检查清单

- [ ] 访问令牌页面
- [ ] 创建令牌
- [ ] 复制令牌
- [ ] 登录 npm
- [ ] 验证登录
- [ ] 发布包
- [ ] 验证发布

---

**预计时间：** 5 分钟
**状态：** ⏳ 等待创建令牌
