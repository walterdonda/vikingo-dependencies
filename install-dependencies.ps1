[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls";
Invoke-WebRequest -Uri 'https://github.com/FirebirdSQL/firebird/releases/download/R2_5_9/Firebird-2.5.9.27139_0_x64.exe' -OutFile Firebird-2.5.9.27139_0_x64.exe;
Invoke-WebRequest -Uri 'https://github.com/FirebirdSQL/firebird/releases/download/v3.0.11/Firebird-3.0.11.33703_0_x64.exe' -OutFile Firebird-3.0.11.33703_0_x64.exe;
PowerShell -NoProfile -ExecutionPolicy Bypass -Command ./Firebird-2.5.9.27139_0_x64.exe /sp- /verysilent /SUPPRESSMSGBOXES /nocancel /noicons /COMPONENTS="ClassicComponent\ClassicComponent,ServerComponent,DevAdminComponent,ClientComponent";
PowerShell -NoProfile -ExecutionPolicy Bypass -Command ./Firebird-3.0.11.33703_0_x64.exe /sp- /verysilent /SUPPRESSMSGBOXES /nocancel /noicons /COMPONENTS="ClassicComponent\ClassicComponent,ServerComponent,DevAdminComponent,ClientComponent";
Remove-Item *.exe;
Set-Location C:\;
Set-ExecutionPolicy Unrestricted -Force
Invoke-WebRequest -Uri 'https://github.com/git-for-windows/git/releases/download/v2.31.1.windows.1/Git-2.31.1-64-bit.exe' -OutFile Git-2.31.1-64-bit.exe;
PowerShell -NoProfile -ExecutionPolicy Bypass -Command ./Git-2.31.1-64-bit.exe  /verysilent /NORESTART /SUPPRESSMSGBOXES /nocancel /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh";
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force;
Install-Module posh-git -Scope CurrentUser -Force;
Import-Module posh-git;
Powershell -NoProfile -ExecutionPolicy Bypass -Command “git clone https://github.com/walterdonda/vikingo-docker.git”
