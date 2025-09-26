@echo off
setlocal

:: Cấu hình GitHub
set USERNAME=TMAcoder
set REPO=portfolio

:: Xóa file lock nếu tồn tại
if exist .git\index.lock del .git\index.lock

:: Khởi tạo git (nếu chưa có)
git init

:: Đổi tên branch thành main
git branch -M main

:: Thêm remote (reset nếu đã tồn tại)
git remote remove origin
git remote add origin https://github.com/%USERNAME%/%REPO%.git

:: Thêm và commit code
git add .
git commit -m "Deploy portfolio site"

:: Đẩy lên GitHub
git push -u origin main

echo ===========================
echo ✅ Deploy thành công!
echo Mở link: https://%USERNAME%.github.io/%REPO%/
echo ===========================

pause
