::('docker images --format "{{.ImageId}}{{.Repository}}-{{.Tag}}"')
FOR /F "tokens=*" %%i IN ('docker images --format "{{.ID}} {{.Repository}}:{{.Tag}}"') DO (
    for /F "tokens=1,2" %%a in ("%%i") do (
        echo %%a
        echo %%b
        docker save -o D:\data\docker\image-backups\%%a.tar %%b
    )
)
    ::for /F "tokens=* delims=:" %%a in (%%i) do (
      :: echo %%a
       ::echo %%b
    ::)
   ::echo %%i
