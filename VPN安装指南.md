# A计划 - VPN安装指南

## 📋 安装Clash for Windows

### 步骤1：下载安装包

**方法1：使用国内镜像（推荐）**
1. 访问：https://download.fastgit.org/Fndroid/clash_for_windows_pkg/releases/download/0.20.36/Clash.for.Windows.0.20.36.0x64-setup.exe
2. 下载到桌面或任意位置

**方法2：使用浏览器直接下载**
1. 复制以下链接到浏览器地址栏：
   https://github.com/Fndroid/clash_for_windows_pkg/releases/download/0.20.36/Clash.for.Windows.0.20.36.0x64-setup.exe
2. 下载后移动到桌面

---

### 步骤2：安装

1. 双击安装包 `Clash.for.Windows.0.20.36.0x64-setup.exe`
2. 点击"Next"继续
3. 选择安装位置（默认即可）
4. 点击"Install"开始安装
5. 等待安装完成
6. 点击"Finish"完成安装

---

### 步骤3：启动和配置

1. 从开始菜单找到"Clash for Windows"并启动
2. 首次启动会要求登录（可以用GitHub账号登录）
3. 登录后，点击左侧的"Profiles"标签
4. 点击"Select a server"或"Quick Switch"
5. 选择一个节点（推荐：香港、日本、新加坡等）
6. 等待连接成功（状态会变成绿色）

---

### 步骤4：配置系统代理

**Windows 10/11：**
1. 打开"设置" -> "网络和Internet" -> "代理"
2. 开启"使用代理服务器"
3. 地址：127.0.0.1
4. 端口：7890
5. 保存

**或使用命令行（管理员权限）：**
```powershell
# 设置代理
netsh winhttp set proxy 127.0.0.1:7890

# 查看代理设置
netsh winhttp show proxy
```

---

### 步骤5：测试网络

1. 打开浏览器
2. 访问：https://www.v2ex.com/
3. 应该能正常访问

---

## ✅ 安装完成后的操作

安装完成后告诉我，我继续发布工作。

---

**预计安装时间：** 5-10分钟
**创建时间：** 2026-03-15 22:27
