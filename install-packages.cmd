@echo off
@REM set PYTHON_DIR=^
@REM %USERPROFILE%\Downloads\python-3.10.8-amd64-portable

set PYTHON_DIR=^
D:Softwares\python-3.10.8-amd64-portable

set PATH=^
%PYTHON_DIR%;^
%PYTHON_DIR%\Scripts

python -m pip install --upgrade pip
python -m pip install -r requirements.txt
pause
