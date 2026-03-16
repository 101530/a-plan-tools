@echo off
echo ========================================
echo npm 登录注册
echo ========================================
echo.
echo 正在登录 npm...
echo.
npm login
echo.
echo ========================================
echo 登录成功！
echo ========================================
echo.
echo 验证登录：
npm whoami
echo.
echo ========================================
echo 登录完成！
echo ========================================
echo.
echo 现在可以发布包了：
echo.
echo 1. 发布 file-organizer：
echo    npm publish file-organizer
echo.
echo 2. 发布 data-cleaner：
echo    npm publish data-cleaner
echo.
pause
