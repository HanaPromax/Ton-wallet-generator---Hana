@echo off
title Cai Dat Thu Vien - Hana
color 0B
echo ===================================================
echo     DANG KIEM TRA VA CAI DAT THU VIEN TU DONG
echo ===================================================
echo.

:: 1. Kiểm tra lệnh py (Python Launcher chuẩn của Windows)
py --version >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    set PYTHON_CMD=py
    goto INSTALL
)

:: 2. Kiểm tra lệnh python (nếu không có py)
python --version >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    set PYTHON_CMD=python
    goto INSTALL
)

:: Nếu không tìm thấy cả 2
color 0C
echo [!] KHONG TIM THAY PYTHON TREN MAY CUA BAN!
echo Vui long tai va cai dat Python tu python.org
echo Nho tich vao o "Add python.exe to PATH" khi cai dat nhe!
echo.
pause
exit

:INSTALL
echo [*] Da tim thay Python tren may.
echo [*] Dang cai dat cac thu vien can thiet (pytoniq-core, tonutils, openpyxl)...
%PYTHON_CMD% -m pip install --upgrade pip
%PYTHON_CMD% -m pip install pytoniq-core tonutils openpyxl

echo.
echo ===================================================
echo   HOAN TAT! BAY GIO BAN CO THE CHAY TOOL DUOC ROI.
echo ===================================================
pause
