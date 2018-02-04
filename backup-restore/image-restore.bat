::FOR /F "tokens=*" %%i IN ('docker images --format "{{.Repository}}-{{.Tag}}"') DO docker save %%i -o D:\data\docker\image-backups\%%i.tar
::docker load -i (*)D:\data\docker\image-backups\
::for /f "tokens=*" %%G in ('dir "D:\data\docker\image-backups\"') do echo Found %%G
forfiles /p D:\data\docker\image-backups\ /C "cmd /c docker load -i @file"
