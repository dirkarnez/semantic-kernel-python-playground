@REM run as Administrator
@echo off

set DOWNLOADS_DIR=^
%USERPROFILE%\Downloads



@REM https://huggingface.co/audreyt/Taiwan-LLM-7B-v2.1-chat-GGUF/resolve/main/Taiwan-LLM-7B-v2.1-chat-Q5_K_M.gguf

@REM https://github.com/ggml-org/llama.cpp/releases/download/b6615/llama-b6615-bin-win-cpu-x64.zip
@REM cd /d "%DOWNLOADS_DIR%\llama-b6615-bin-win-cpu-x64"

@REM https://github.com/ggml-org/llama.cpp/releases/download/b6670/llama-b6670-bin-win-cuda-12.4-x64.zip
cd /d "%DOWNLOADS_DIR%\llama-b6670-bin-win-cuda-12.4-x64"


.\llama-server.exe --help
.\llama-server.exe --jinja --port 8081 -m %DOWNLOADS_DIR%\Taiwan-LLM-7B-v2.1-chat-Q5_K_M.gguf
pause