@ECHO OFF

REM Configures Python setup for project

REM Get the directory of the batch script
SET "SCRIPT_DIR=%~dp0"

REM Set project ROOT_DIR to the parent directory of the script
SET "ROOT_DIR=%SCRIPT_DIR:~0,-1%"

ECHO Switching to project root dir: %ROOT_DIR%
CD /D "%ROOT_DIR%"

REM Check if venv exists
IF EXIST "venv" (
    ECHO Virtual environment already exists.
) ELSE (
    ECHO Creating virtual environment...
    python -m venv venv

    REM Check if venv creation was successful
    IF ERRORLEVEL 1 (
        ECHO Error: Virtual environment creation failed.
        GOTO :EOF  REM Exit the script
    ) ELSE (
        ECHO Virtual environment created successfully.
    )
)

ECHO Installing packages into virtual environment...
START CMD /k "%ROOT_DIR%\venv\Scripts\activate.bat && pip install -r %ROOT_DIR%\requirements.txt && pre-commit install"

PAUSE
