timeout /t 100
:loop
FOR /F %%x IN ('tasklist ^| find /C "cmd.exe"') DO IF %%x LEQ 1 shutdown /r /t 0 ELSE timeout /t 10
GOTO loop