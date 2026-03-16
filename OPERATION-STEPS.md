# A-Plan Tools 完整操作步骤

## 📋 总体进度

### ✅ 已完成（6/8）
1. ✅ 产品开发 - File Organizer + Data Cleaner
2. ✅ 文档创建 - 13 个文档文件
3. ✅ Git 仓库初始化 - 7 个 commits
4. ✅ GitHub Pages 配置 - 网站已部署
5. ✅ 网站部署 - 成功运行
6. ✅ npm 包配置 - package.json 已创建

### ⏳ 待完成（2/8）
7. ⏳ npm 发布 - 需要登录和发布
8. ⏳ 营销推广 - 内容创建和推广

---

## 🚀 第7步：npm 发布（预计 30 分钟）

### 7.1 准备工作

#### 步骤 1：注册 npm 账号（如果还没有）

```bash
npm adduser
```

**输入：**
- Username（用户名）
- Password（密码）
- Email（邮箱）
- 确认密码

#### 步骤 2：验证登录

```bash
npm whoami
```

**预期输出：** 你的 npm 用户名

---

### 7.2 发布 file-organizer 包

#### 步骤 3：进入项目目录

```bash
cd a-plan-tools
```

#### 步骤 4：发布 file-organizer

```bash
npm publish file-organizer
```

**预期输出：**
```
+ file-organizer@1.0.0
```

#### 步骤 5：验证发布

访问：https://www.npmjs.com/package/file-organizer

---

### 7.3 发布 data-cleaner 包

#### 步骤 6：发布 data-cleaner

```bash
npm publish data-cleaner
```

**预期输出：**
```
+ data-cleaner@1.0.0
```

#### 步骤 7：验证发布

访问：https://www.npmjs.com/package/data-cleaner

---

### 7.4 更新根目录 package.json

#### 步骤 8：更新根目录 package.json

编辑 `package.json`，添加依赖：

```json
{
  "name": "a-plan-tools",
  "version": "1.0.0",
  "description": "...",
  "dependencies": {
    "file-organizer": "^1.0.0",
    "data-cleaner": "^1.0.0"
  }
}
```

#### 步骤 9：提交并推送

```bash
git add package.json
git commit -m "Add npm dependencies"
git push
```

---

## 📝 第8步：创建营销内容（预计 1 小时）

### 8.1 创建博客文章

#### 步骤 10：撰写技术博客

创建 `blog-post.md`：

```markdown
# A-Plan Tools：自动化文件整理和数据清洗工具

## 简介

你是否每天花费大量时间整理文件？A-Plan Tools 帮你自动化这个过程！

## File Organizer

自动识别文件类型，将文件分类到对应的目录中。

## Data Cleaner

自动清洗和标准化各种格式的数据文件。

## 安装和使用

### 安装

```bash
npm install -g file-organizer data-cleaner
```

### 使用

```bash
file-organizer ~/Downloads
data-cleaner data.csv
```

## 开源和贡献

完全开源，MIT 许可证。欢迎贡献！

## 下载

GitHub: https://github.com/101530/a-plan-tools
```

#### 步骤 11：发布博客

- 发布到你的博客平台（WordPress、Medium、掘金等）
- 标签：#productivity #opensource #tools

---

### 8.2 创建社交媒体内容

#### 步骤 12：创建 Twitter/X 帖子

**帖子 1：**
```
🚀 A-Plan Tools v1.0.0 现已发布！

✨ File Organizer - 智能文件分类
✨ Data Cleaner - 自动数据清洗

开源免费，立即下载：https://github.com/101530/a-plan-tools
#opensource #productivity
```

**帖子 2：**
```
还在手动整理文件？试试 A-Plan Tools 的 File Organizer！

一键自动分类文件到 7 大类别：图片、视频、音频、文档、压缩包、安装程序等。

✅ 智能识别
✅ 预览模式
✅ 详细日志

立即下载：https://github.com/101530/a-plan-tools
#filemanagement #productivity
```

**帖子 3：**
```
数据清洗总是很麻烦？用 A-Plan Tools 的 Data Cleaner！

自动清洗 CSV、JSON、XML、TSV 文件
✅ 自动格式检测
✅ 结构验证
✅ 自动备份

开源免费：https://github.com/101530/a-plan-tools
#datacleaning #opensource
```

#### 步骤 13：创建 Reddit 帖子

**r/programming**
```
分享一个开源的文件整理工具：A-Plan Tools

包含两个工具：
1. File Organizer - 自动分类文件
2. Data Cleaner - 自动清洗数据

MIT 许可证，完全开源。欢迎 Star 和贡献！

https://github.com/101530/a-plan-tools
```

**r/productivity**
```
如何提高工作效率？我用 A-Plan Tools 来整理文件和清洗数据

File Organizer 可以自动将文件分类到对应的目录，节省大量时间。
Data Cleaner 可以自动清洗各种格式的数据文件，确保数据质量。

两个工具都是开源免费的，推荐给大家！

https://github.com/101530/a-plan-tools
```

---

### 8.3 创建视频教程

#### 步骤 14：录制视频

**视频 1：产品介绍**
- 时长：2-3 分钟
- 内容：介绍两个工具的功能和用途
- 发布到：YouTube、Bilibili

**视频 2：使用演示**
- 时长：5 分钟
- 内容：演示如何使用 File Organizer 和 Data Cleaner
- 发布到：YouTube、Bilibili

---

## 📢 第9步：发布推广（预计 1 小时）

### 9.1 社交媒体推广

#### 步骤 15：发布到 Twitter/X

- 发布 3 个帖子
- 使用相关标签：#opensource #productivity #tools

#### 步骤 16：发布到 Reddit

- 发布到 r/programming 和 r/productivity
- 回复评论和问题

#### 步骤 17：发布到 Hacker News

- 创建新帖子
- 描述产品功能和价值

---

### 9.2 社区推广

#### 步骤 18：创建 GitHub Release

```bash
cd a-plan-tools
git tag v1.0.0
git push origin v1.0.0
```

访问：https://github.com/101530/a-plan-tools/releases

#### 步骤 19：添加到 GitHub README

在 README.md 中添加：
- Star 按钮代码
- Issue 按钮代码
- 下载链接

#### 步骤 20：创建 FAQ 文档

创建 `FAQ.md`：
- 常见问题解答
- 使用技巧
- 故障排除

---

### 9.3 持续推广

#### 步骤 21：每日维护

- 每天发布 1-2 个帖子
- 回复评论
- 收集反馈

#### 步骤 22：每周更新

- 更新 CHANGELOG.md
- 发布新功能
- 修复问题

---

## 📊 完整时间线

### 第1步：npm 发布（30分钟）
- 注册账号：5分钟
- 发布 file-organizer：10分钟
- 发布 data-cleaner：10分钟
- 验证发布：5分钟

### 第2步：创建营销内容（1小时）
- 博客文章：20分钟
- 社交媒体内容：20分钟
- 视频教程：20分钟

### 第3步：发布推广（1小时）
- 社交媒体推广：30分钟
- 社区推广：30分钟

### 总计：2.5小时

---

## ✅ 完成标准

### 网站完成
- ✅ GitHub Pages 正常访问
- ✅ 显示完整内容
- ✅ HTTPS 启用

### npm 完成
- ✅ file-organizer 已发布
- ✅ data-cleaner 已发布
- ✅ 可在 npmjs.com 找到

### 营销完成
- ✅ 博客文章已发布
- ✅ 社交媒体帖子已发布
- ✅ 视频教程已上传

### 推广完成
- ✅ GitHub Release 已创建
- ✅ 社区帖子已发布
- ✅ 收集到反馈

---

## 🎯 下一步行动

### 立即执行（npm 发布）

1. **注册/登录 npm**
   ```bash
   npm adduser
   npm whoami
   ```

2. **发布 file-organizer**
   ```bash
   cd a-plan-tools
   npm publish file-organizer
   ```

3. **发布 data-cleaner**
   ```bash
   npm publish data-cleaner
   ```

### 然后执行（营销内容）

4. **撰写博客文章**
5. **创建社交媒体内容**
6. **录制视频教程**

最后执行（发布推广）

7. **发布到社交媒体**
8. **发布到社区**
9. **持续推广和维护**

---

**版本:** 1.0.0
**创建日期:** 2026-03-14
**状态:** ⏳ 等待执行操作步骤
