REM @ECHO OFF

REM Configures Python setup for project

ECHO Switching to root dir...
CD ..

REM Check if venv exists
IF EXIST "venv" (
    ECHO Virtual environment already exists.
) ELSE (
    ECHO Creating virtual environment...
    python -m venv venv
)

ECHO Installing packages into virtual environment...
START CMD /k ".\venv\Scripts\activate.bat && pip install -r requirements.txt && pre-commit install"

PAUSE
