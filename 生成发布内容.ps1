# A计划 - 生成发布内容脚本
# 此脚本会生成所有帖子的完整内容到文件

$OutputDir = "C:\Users\15088\.openclaw\workspace\a-plan-tools\发布内容"

# 创建输出目录
if (!(Test-Path -Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
    Write-Host "创建目录: $OutputDir" -ForegroundColor Green
}

# ==================== Reddit帖子 ====================

Write-Host "`n生成Reddit帖子..." -ForegroundColor Cyan

$redditPosts = @(
    @{
        Subreddit = "nodejs"
        Title = "I built two open-source Node.js tools for file organization and data cleaning"
        Content = "I recently created two CLI tools to automate common tasks:`n`n1. **File Organizer** - Automatically organizes files into categories (images, videos, documents, archives)`n2. **Data Cleaner** - Cleans and standardizes data files (CSV, JSON, XML, TSV)`n`nBoth tools are MIT licensed and available on npm:`n- a-plan-tools-file-organizer`n- a-plan-tools-data-cleaner`n`nGitHub: https://github.com/101530/a-plan-tools`nNPM: https://www.npmjs.com/package/a-plan-tools-file-organizer`n`nWould love feedback and contributions!"
    },
    @{
        Subreddit = "programming"
        Title = "Two CLI tools to automate file organization and data cleaning (MIT, Node.js)"
        Content = "As a developer, I was tired of manually organizing downloaded files and cleaning messy data. So I built two CLI tools:`n`n**File Organizer**`n- Auto-categorizes files by type`n- Supports images, videos, audio, documents, archives`n- Customizable rules`n- MIT License`n`n**Data Cleaner**`n- Cleans CSV, JSON, XML, TSV files`n- Removes empty lines, trims whitespace`n- Normalizes encodings and line endings`n- Creates backups automatically`n- MIT License`n`nBoth published to npm and available on GitHub:`nhttps://github.com/101530/a-plan-tools`n`nOpen to feedback and pull requests!"
    },
    @{
        Subreddit = "learnprogramming"
        Title = "Sharing my first two CLI tools as a learning project (MIT License)"
        Content = "I recently started learning Node.js and built these two CLI tools as practice projects:`n`n1. File Organizer - A simple tool to organize files by type`n2. Data Cleaner - A tool to clean and standardize data files`n`nI learned a lot about:`n- Command-line argument parsing`n- File system operations`n- Data processing`n- Package publishing on npm`n`nBoth are MIT licensed and available on GitHub:`nhttps://github.com/101530/a-plan-tools`n`nWould appreciate any feedback or suggestions for improvement!"
    },
    @{
        Subreddit = "productivity"
        Title = "I built open-source tools to automate file organization and data cleaning"
        Content = "After years of manually organizing files and cleaning messy data, I finally built tools to automate these tasks:`n`n**File Organizer**`n- Organize downloads automatically`n- Categorize images, videos, documents, archives`n- Save hours every week`n`n**Data Cleaner**`n- Clean CSV, JSON, XML files`n- Standardize formats for analysis`n- Create backups automatically`n`nBoth are MIT licensed and available on npm:`nhttps://www.npmjs.com/package/a-plan-tools-file-organizer`nhttps://www.npmjs.com/package/a-plan-tools-data-cleaner`n`nOpen source and free to use!"
    },
    @{
        Subreddit = "devops"
        Title = "Two open-source Node.js CLI tools for automation (MIT License)"
        Content = "I created two tools to automate common dev tasks:`n`n**File Organizer**`n- Automate file organization`n- Categorize by type`n- Customizable rules`n`n**Data Cleaner**`n- Clean data files (CSV, JSON, XML, TSV)`n- Standardize formats`n- Create backups`n`nBoth are MIT licensed and available on npm:`nhttps://www.npmjs.com/package/a-plan-tools-file-organizer`nhttps://www.npmjs.com/package/a-plan-tools-data-cleaner`n`nGreat for automating workflows and improving productivity!"
    }
)

for ($i = 0; $i -lt $redditPosts.Count; $i++) {
    $post = $redditPosts[$i]
    $filename = "$OutputDir\reddit-post-$($i+1)-$($post.Subreddit).txt"
    $content = "========================================`nReddit Post - r/$($post.Subreddit)`n========================================`n`nTitle:`n$post.Title`n`nContent:`n$post.Content`n`n========================================"
    Set-Content -Path $filename -Value $content -Encoding UTF8
    Write-Host "生成: $filename" -ForegroundColor Green
}

# ==================== Twitter帖子 ====================

Write-Host "`n生成Twitter帖子..." -ForegroundColor Cyan

$twitterPosts = @(
    "I built two open-source Node.js tools to automate common tasks:`n`n1️⃣ File Organizer - Auto-categorizes files (images, videos, documents)`n2️⃣ Data Cleaner - Cleans CSV, JSON, XML files`n`nMIT License 📄`nnpm: a-plan-tools-file-organizer`nnpm: a-plan-tools-data-cleaner`nGitHub: https://github.com/101530/a-plan-tools`n`n#nodejs #opensource #automation",
    "Stop manually organizing files! 📁`n`nI built File Organizer - a CLI tool that automatically categorizes files by type:`n- Images -gt; images/`n- Videos -gt; videos/`n- Documents -gt; documents/`n- Archives -gt; archives/`n`nMIT License 📄`nnpm: a-plan-tools-file-organizer`nGitHub: https://github.com/101530/a-plan-tools`n`n#productivity #devtools",
    "Clean messy data files in seconds! 🧹`n`nData Cleaner is a CLI tool that:`n- Cleans CSV, JSON, XML, TSV files`n- Removes empty lines`n- Trims whitespace`n- Creates backups automatically`n`nMIT License 📄`nnpm: a-plan-tools-data-cleaner`nGitHub: https://github.com/101530/a-plan-tools`n`n#dataprocessing #opensource",
    "Two new CLI tools for automation 🚀`n`nFile Organizer: Auto-categorize files by type`nData Cleaner: Clean and standardize data files`n`nBoth MIT licensed and available on npm:`n- a-plan-tools-file-organizer`n- a-plan-tools-data-cleaner`n`nGitHub: https://github.com/101530/a-plan-tools`n`n#nodejs #automation",
    "Build better tools, save time 🛠️`n`nI created two CLI tools that save hours every week:`n- File Organizer: Automate file organization`n- Data Cleaner: Clean data files automatically`n`nMIT License 📄`nnpm: a-plan-tools-file-organizer`nnpm: a-plan-tools-data-cleaner`nGitHub: https://github.com/101530/a-plan-tools`n`n#opensource #productivity",
    "Automate file organization with Node.js 📁`n`nFile Organizer CLI tool:`n✅ Auto-categorize by type`n✅ Customizable rules`n✅ Cross-platform`n✅ MIT License`n`nnpm: a-plan-tools-file-organizer`nGitHub: https://github.com/101530/a-plan-tools`n`n#nodejs #cli #devtools",
    "Clean data files automatically with Node.js 🧹`n`nData Cleaner CLI tool:`n✅ CSV, JSON, XML, TSV support`n✅ Remove empty lines`n✅ Trim whitespace`n✅ Create backups`n✅ MIT License`n`nnpm: a-plan-tools-data-cleaner`nGitHub: https://github.com/101530/a-plan-tools`n`n#nodejs #cli #opensource",
    "Open source tools for developers 🎉`n`nTwo new npm packages:`n1. a-plan-tools-file-organizer`n2. a-plan-tools-data-cleaner`n`nBoth MIT licensed and available on GitHub:`nhttps://github.com/101530/a-plan-tools`n`n#opensource #nodejs #developer",
    "Save hours every week with automation 📊`n`nFile Organizer: Organize files automatically`nData Cleaner: Clean data files automatically`n`nBoth MIT licensed:`n- npm: a-plan-tools-file-organizer`n- npm: a-plan-tools-data-cleaner`n- GitHub: https://github.com/101530/a-plan-tools`n`n#automation #productivity",
    "CLI tools that save time ⏰`n`nFile Organizer: Auto-categorize files by type`nData Cleaner: Clean CSV, JSON, XML files`n`nMIT License 📄`nnpm: a-plan-tools-file-organizer`nnpm: a-plan-tools-data-cleaner`nGitHub: https://github.com/101530/a-plan-tools`n`n#nodejs #cli #opensource"
)

for ($i = 0; $i -lt $twitterPosts.Count; $i++) {
    $filename = "$OutputDir\twitter-post-$($i+1).txt"
    $content = "========================================`nTwitter Post $($i+1)`n========================================`n`n$post`n`n========================================"
    Set-Content -Path $filename -Value $content -Encoding UTF8
    Write-Host "生成: $filename" -ForegroundColor Green
}

# ==================== 生成README ====================

Write-Host "`n生成README..." -ForegroundColor Cyan

$readmeContent = "========================================`n发布内容说明`n========================================`n`n所有发布内容已生成到以下文件：`n`n## Reddit帖子`n- reddit-post-1-nodejs.txt`n- reddit-post-2-programming.txt`n- reddit-post-3-learnprogramming.txt`n- reddit-post-4-productivity.txt`n- reddit-post-5-devops.txt`n`n## Twitter帖子`n- twitter-post-1.txt`n- twitter-post-2.txt`n- twitter-post-3.txt`n- twitter-post-4.txt`n- twitter-post-5.txt`n- twitter-post-6.txt`n- twitter-post-7.txt`n- twitter-post-8.txt`n- twitter-post-9.txt`n- twitter-post-10.txt`n`n## 使用方法`n`n1. 打开对应文件`n2. 复制内容`n3. 粘贴到对应平台`n4. 发布`n`n## 发布顺序`n`n- Reddit: 间隔2-3小时发布一个帖子`n- Twitter: 间隔5-10分钟发布一个帖子`n- 博客: 已部署到 https://101530.github.io/a-plan-tools/`n`n## 后续跟进`n`n- 每天监控评论和反馈`n- 定期更新内容`n- 持续推广`n- 收集用户反馈`n`n---`n生成时间: " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss") + "`n生成者: A计划自动化脚本"

Set-Content -Path "$OutputDir\README.txt" -Value $readmeContent -Encoding UTF8
Write-Host "生成: $OutputDir\README.txt" -ForegroundColor Green

Write-Host "`n========================================" -ForegroundColor Green
Write-Host "所有内容已生成完成！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host "`n输出目录: $OutputDir" -ForegroundColor Cyan
Write-Host "`n请打开输出目录查看所有帖子内容。" -ForegroundColor Cyan
