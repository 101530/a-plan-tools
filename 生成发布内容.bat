@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set "OutputDir=C:\Users\15088\.openclaw\workspace\a-plan-tools\发布内容"

if not exist "%OutputDir%" (
    mkdir "%OutputDir%"
    echo 创建目录: %OutputDir%
)

echo.
echo ========================================
echo 生成Reddit帖子
echo ========================================
echo.

echo 1. r/nodejs
(
echo ========================================
echo Reddit Post - r/nodejs
echo ========================================
echo.
echo Title:
echo I built two open-source Node.js tools for file organization and data cleaning
echo.
echo Content:
echo I recently created two CLI tools to automate common tasks:
echo.
echo 1. **File Organizer** - Automatically organizes files into categories (images, videos, documents, archives)
echo 2. **Data Cleaner** - Cleans and standardizes data files (CSV, JSON, XML, TSV)
echo.
echo Both tools are MIT licensed and available on npm:
echo - a-plan-tools-file-organizer
echo - a-plan-tools-data-cleaner
echo.
echo GitHub: https://github.com/101530/a-plan-tools
echo NPM: https://www.npmjs.com/package/a-plan-tools-file-organizer
echo.
echo Would love feedback and contributions!
echo.
echo ========================================
) > "%OutputDir%\reddit-post-1-nodejs.txt"
echo 生成完成: reddit-post-1-nodejs.txt

echo 2. r/programming
(
echo ========================================
echo Reddit Post - r/programming
echo ========================================
echo.
echo Title:
echo Two CLI tools to automate file organization and data cleaning (MIT, Node.js)
echo.
echo Content:
echo As a developer, I was tired of manually organizing downloaded files and cleaning messy data. So I built two CLI tools:
echo.
echo **File Organizer**
echo - Auto-categorizes files by type
echo - Supports images, videos, audio, documents, archives
echo - Customizable rules
echo - MIT License
echo.
echo **Data Cleaner**
echo - Cleans CSV, JSON, XML, TSV files
echo - Removes empty lines, trims whitespace
echo - Normalizes encodings and line endings
echo - Creates backups automatically
echo - MIT License
echo.
echo Both published to npm and available on GitHub:
echo https://github.com/101530/a-plan-tools
echo.
echo Open to feedback and pull requests!
echo.
echo ========================================
) > "%OutputDir%\reddit-post-2-programming.txt"
echo 生成完成: reddit-post-2-programming.txt

echo 3. r/learnprogramming
(
echo ========================================
echo Reddit Post - r/learnprogramming
echo ========================================
echo.
echo Title:
echo Sharing my first two CLI tools as a learning project (MIT License)
echo.
echo Content:
echo I recently started learning Node.js and built these two CLI tools as practice projects:
echo.
echo 1. File Organizer - A simple tool to organize files by type
echo 2. Data Cleaner - A tool to clean and standardize data files
echo.
echo I learned a lot about:
echo - Command-line argument parsing
echo - File system operations
echo - Data processing
echo - Package publishing on npm
echo.
echo Both are MIT licensed and available on GitHub:
echo https://github.com/101530/a-plan-tools
echo.
echo Would appreciate any feedback or suggestions for improvement!
echo.
echo ========================================
) > "%OutputDir%\reddit-post-3-learnprogramming.txt"
echo 生成完成: reddit-post-3-learnprogramming.txt

echo 4. r/productivity
(
echo ========================================
echo Reddit Post - r/productivity
echo ========================================
echo.
echo Title:
echo I built open-source tools to automate file organization and data cleaning
echo.
echo Content:
echo After years of manually organizing files and cleaning messy data, I finally built tools to automate these tasks:
echo.
echo **File Organizer**
echo - Organize downloads automatically
echo - Categorize images, videos, documents, archives
echo - Save hours every week
echo.
echo **Data Cleaner**
echo - Clean CSV, JSON, XML files
echo - Standardize formats for analysis
echo - Create backups automatically
echo.
echo Both are MIT licensed and available on npm:
echo https://www.npmjs.com/package/a-plan-tools-file-organizer
echo https://www.npmjs.com/package/a-plan-tools-data-cleaner
echo.
echo Open source and free to use!
echo.
echo ========================================
) > "%OutputDir%\reddit-post-4-productivity.txt"
echo 生成完成: reddit-post-4-productivity.txt

echo 5. r/devops
(
echo ========================================
echo Reddit Post - r/devops
echo ========================================
echo.
echo Title:
echo Two open-source Node.js CLI tools for automation (MIT License)
echo.
echo Content:
echo I created two tools to automate common dev tasks:
echo.
echo **File Organizer**
echo - Automate file organization
echo - Categorize by type
echo - Customizable rules
echo.
echo **Data Cleaner**
echo - Clean data files (CSV, JSON, XML, TSV)
echo - Standardize formats
echo - Create backups
echo.
echo Both are MIT licensed and available on npm:
echo https://www.npmjs.com/package/a-plan-tools-file-organizer
echo https://www.npmjs.com/package/a-plan-tools-data-cleaner
echo.
echo Great for automating workflows and improving productivity!
echo.
echo ========================================
) > "%OutputDir%\reddit-post-5-devops.txt"
echo 生成完成: reddit-post-5-devops.txt

echo.
echo ========================================
echo 生成Twitter帖子
echo ========================================
echo.

echo 1. Twitter Post 1
(
echo ========================================
echo Twitter Post 1
echo ========================================
echo.
echo I built two open-source Node.js tools to automate common tasks:
echo.
echo 1️⃣ File Organizer - Auto-categorizes files (images, videos, documents)
echo 2️⃣ Data Cleaner - Cleans CSV, JSON, XML files
echo.
echo MIT License 📄
echo npm: a-plan-tools-file-organizer
echo npm: a-plan-tools-data-cleaner
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #nodejs #opensource #automation
echo.
echo ========================================
) > "%OutputDir%\twitter-post-1.txt"
echo 生成完成: twitter-post-1.txt

echo 2. Twitter Post 2
(
echo ========================================
echo Twitter Post 2
echo ========================================
echo.
echo Stop manually organizing files! 📁
echo.
echo I built File Organizer - a CLI tool that automatically categorizes files by type:
echo - Images -gt; images/
echo - Videos -gt; videos/
echo - Documents -gt; documents/
echo - Archives -gt; archives/
echo.
echo MIT License 📄
echo npm: a-plan-tools-file-organizer
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #productivity #devtools
echo.
echo ========================================
) > "%OutputDir%\twitter-post-2.txt"
echo 生成完成: twitter-post-2.txt

echo 3. Twitter Post 3
(
echo ========================================
echo Twitter Post 3
echo ========================================
echo.
echo Clean messy data files in seconds! 🧹
echo.
echo Data Cleaner is a CLI tool that:
echo - Cleans CSV, JSON, XML, TSV files
echo - Removes empty lines
echo - Trims whitespace
echo - Creates backups automatically
echo.
echo MIT License 📄
echo npm: a-plan-tools-data-cleaner
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #dataprocessing #opensource
echo.
echo ========================================
) > "%OutputDir%\twitter-post-3.txt"
echo 生成完成: twitter-post-3.txt

echo 4. Twitter Post 4
(
echo ========================================
echo Twitter Post 4
echo ========================================
echo.
echo Two new CLI tools for automation 🚀
echo.
echo File Organizer: Auto-categorize files by type
echo Data Cleaner: Clean and standardize data files
echo.
echo Both MIT licensed and available on npm:
echo - a-plan-tools-file-organizer
echo - a-plan-tools-data-cleaner
echo.
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #nodejs #automation
echo.
echo ========================================
) > "%OutputDir%\twitter-post-4.txt"
echo 生成完成: twitter-post-4.txt

echo 5. Twitter Post 5
(
echo ========================================
echo Twitter Post 5
echo ========================================
echo.
echo Build better tools, save time 🛠️
echo.
echo I created two CLI tools that save hours every week:
echo - File Organizer: Automate file organization
echo - Data Cleaner: Clean data files automatically
echo.
echo MIT License 📄
echo npm: a-plan-tools-file-organizer
echo npm: a-plan-tools-data-cleaner
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #opensource #productivity
echo.
echo ========================================
) > "%OutputDir%\twitter-post-5.txt"
echo 生成完成: twitter-post-5.txt

echo 6. Twitter Post 6
(
echo ========================================
echo Twitter Post 6
echo ========================================
echo.
echo Automate file organization with Node.js 📁
echo.
echo File Organizer CLI tool:
echo - Auto-categorize by type
echo - Customizable rules
echo - Cross-platform
echo - MIT License
echo.
echo npm: a-plan-tools-file-organizer
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #nodejs #cli #devtools
echo.
echo ========================================
) > "%OutputDir%\twitter-post-6.txt"
echo 生成完成: twitter-post-6.txt

echo 7. Twitter Post 7
(
echo ========================================
echo Twitter Post 7
echo ========================================
echo.
echo Clean data files automatically with Node.js 🧹
echo.
echo Data Cleaner CLI tool:
echo - CSV, JSON, XML, TSV support
echo - Remove empty lines
echo - Trim whitespace
echo - Create backups
echo - MIT License
echo.
echo npm: a-plan-tools-data-cleaner
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #nodejs #cli #opensource
echo.
echo ========================================
) > "%OutputDir%\twitter-post-7.txt"
echo 生成完成: twitter-post-7.txt

echo 8. Twitter Post 8
(
echo ========================================
echo Twitter Post 8
echo ========================================
echo.
echo Open source tools for developers 🎉
echo.
echo Two new npm packages:
echo 1. a-plan-tools-file-organizer
echo 2. a-plan-tools-data-cleaner
echo.
echo Both MIT licensed and available on GitHub:
echo https://github.com/101530/a-plan-tools
echo.
echo #opensource #nodejs #developer
echo.
echo ========================================
) > "%OutputDir%\twitter-post-8.txt"
echo 生成完成: twitter-post-8.txt

echo 9. Twitter Post 9
(
echo ========================================
echo Twitter Post 9
echo ========================================
echo.
echo Save hours every week with automation 📊
echo.
echo File Organizer: Organize files automatically
echo Data Cleaner: Clean data files automatically
echo.
echo Both MIT licensed:
echo - npm: a-plan-tools-file-organizer
echo - npm: a-plan-tools-data-cleaner
echo - GitHub: https://github.com/101530/a-plan-tools
echo.
echo #automation #productivity
echo.
echo ========================================
) > "%OutputDir%\twitter-post-9.txt"
echo 生成完成: twitter-post-9.txt

echo 10. Twitter Post 10
(
echo ========================================
echo Twitter Post 10
echo ========================================
echo.
echo CLI tools that save time ⏰
echo.
echo File Organizer: Auto-categorize files by type
echo Data Cleaner: Clean CSV, JSON, XML files
echo.
echo MIT License 📄
echo npm: a-plan-tools-file-organizer
echo npm: a-plan-tools-data-cleaner
echo GitHub: https://github.com/101530/a-plan-tools
echo.
echo #nodejs #cli #opensource
echo.
echo ========================================
) > "%OutputDir%\twitter-post-10.txt"
echo 生成完成: twitter-post-10.txt

echo.
echo ========================================
echo 生成README
echo ========================================
echo.

(
echo ========================================
echo 发布内容说明
echo ========================================
echo.
echo 所有发布内容已生成到以下文件：
echo.
echo ## Reddit帖子
echo - reddit-post-1-nodejs.txt
echo - reddit-post-2-programming.txt
echo - reddit-post-3-learnprogramming.txt
echo - reddit-post-4-productivity.txt
echo - reddit-post-5-devops.txt
echo.
echo ## Twitter帖子
echo - twitter-post-1.txt
echo - twitter-post-2.txt
echo - twitter-post-3.txt
echo - twitter-post-4.txt
echo - twitter-post-5.txt
echo - twitter-post-6.txt
echo - twitter-post-7.txt
echo - twitter-post-8.txt
echo - twitter-post-9.txt
echo - twitter-post-10.txt
echo.
echo ## 使用方法
echo.
echo 1. 打开对应文件
echo 2. 复制内容
echo 3. 粘贴到对应平台
echo 4. 发布
echo.
echo ## 发布顺序
echo.
echo - Reddit: 间隔2-3小时发布一个帖子
echo - Twitter: 间隔5-10分钟发布一个帖子
echo - 博客: 已部署到 https://101530.github.io/a-plan-tools/
echo.
echo ## 后续跟进
echo.
echo - 每天监控评论和反馈
echo - 定期更新内容
echo - 持续推广
echo - 收集用户反馈
echo.
echo ---
echo 生成时间: %DATE% %TIME%
echo 生成者: A计划自动化脚本
echo ========================================
) > "%OutputDir\README.txt"

echo 生成完成: README.txt

echo.
echo ========================================
echo 所有内容已生成完成！
echo ========================================
echo.
echo 输出目录: %OutputDir%
echo.
echo 请打开输出目录查看所有帖子内容。
echo.
pause
