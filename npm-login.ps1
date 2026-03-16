# npm 登录注册脚本

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "npm 登录注册" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "正在登录 npm..." -ForegroundColor Yellow
Write-Host ""

npm login

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "登录成功！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "验证登录：" -ForegroundColor Yellow
npm whoami
Write-Host ""

Write-Host "========================================" -ForegroundColor Green
Write-Host "登录完成！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""

Write-Host "现在可以发布包了：" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. 发布 file-organizer：" -ForegroundColor White
Write-Host "   npm publish file-organizer" -ForegroundColor Gray
Write-Host ""
Write-Host "2. 发布 data-cleaner：" -ForegroundColor White
Write-Host "   npm publish data-cleaner" -ForegroundColor Gray
Write-Host ""
