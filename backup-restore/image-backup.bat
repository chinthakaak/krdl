::FOR /F "tokens=*" %%i IN ('docker images --format "{{.Repository}}-{{.Tag}}"') DO docker save %%i -o D:\data\docker\image-backups\%%i.tar
::FOR /F "tokens=*" %%i IN ('docker images -q') DO docker save %%i -o D:\data\docker\image-backups\%%i.tar
FOR /F "tokens=*" %%i IN ('docker images --format "{{.ID}} {{.Repository}}:{{.Tag}}"') DO (
    for /F "tokens=1,2" %%a in ("%%i") do (
        echo %%a
        echo %%b
        docker save -o D:\data\docker\image-backups\%%a.tar %%b
    )
)