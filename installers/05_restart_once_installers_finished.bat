timeout /t 600
:loop
FOR /F %%x IN ('tasklist ^| find /C "cmd.exe"') DO (
    IF %%x LEQ 2 (
        shutdown /r /t 10
    ) ELSE (
        timeout /t 100
    )
)
GOTO loop