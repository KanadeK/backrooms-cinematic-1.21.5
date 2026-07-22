@echo off
setlocal EnableExtensions DisableDelayedExpansion
chcp 65001 >nul
set "SRC=%~dp0"
set "SAVES=%APPDATA%\.minecraft\saves"
set "WORLD=Backrooms_Cinematic_1.21.5_v0.5.2"
set "DEST=%SAVES%\%WORLD%"

if not exist "%SRC%level.dat" (
  echo 错误：请在世界文件夹内运行本安装器。
  exit /b 1
)
if not exist "%SAVES%" mkdir "%SAVES%" || (
  echo 错误：无法创建 Minecraft 存档目录。
  exit /b 1
)
if exist "%DEST%" (
  for /f %%I in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd-HHmmss"') do set "STAMP=%%I"
  set "BACKUP=%SAVES%\%WORLD%_backup_%STAMP%"
  echo 已存在同名存档，将先备份到：%BACKUP%
  move "%DEST%" "%BACKUP%" || (
    echo 错误：备份已有存档失败，安装已中止。
    exit /b 1
  )
)
echo 正在安装到：%DEST%
robocopy "%SRC%" "%DEST%" /E /R:1 /W:1 /XD ".git" /XF "install_windows.bat" "install_linux_macos.sh" >nul
if errorlevel 8 (
  echo 错误：复制失败。已有存档如已备份，请手动恢复。
  exit /b 1
)
echo 安装完成。请使用 Minecraft Java Edition 1.21.5 打开该存档。
exit /b 0
