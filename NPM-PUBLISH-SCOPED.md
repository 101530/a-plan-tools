# npm 发布 - 使用 scoped 包名

## 📋 当前问题

❌ 令牌缺少 bypass 2fa 权限
⏳ 可以使用 scoped 包名发布

---

## 🔐 解决方案：使用 scoped 包名

### 优势

1. 不需要 bypass 2fa 权限
2. 更安全
3. 包名更清晰

### 劣势

1. 包名会改变
2. 需要更新文档

---

## 📦 发布 scoped 包

### 步骤 1：进入项目目录

```bash
cd a-plan-tools
```

### 步骤 2：发布 scoped 包

```bash
npm publish data-cleaner --access public --tag next
```

### 步骤 3：包名会变成

```
@tianyaduan/data-cleaner
```

### 步骤 4：访问地址

```
https://www.npmjs.com/package/@tianyaduan/data-cleaner
```

---

## 📝 完成后需要做的

### 1. 更新 package.json

将包名改为 scoped 包名：

```json
{
  "name": "@tianyaduan/data-cleaner",
  "version": "1.0.0",
  ...
}
```

### 2. 更新文档

- README.md
- GITHUB-README.md
- 其他文档

### 3. 更新 GitHub 仓库

- README.md
- 链接

### 4. 更新网站

- index.html
- 链接

---

## ✅ 优点

- ✅ 不需要 bypass 2fa
- ✅ 发布成功
- ✅ 更安全

---

## ⚠️ 缺点

- ⚠️ 包名改变
- ⚠️ 需要更新文档

---

## 🎯 推荐方案

**使用 scoped 包名**（快速、安全）

---

**状态：** ⏳ 等待执行 scoped 包发布
