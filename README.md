# useful-scripts
My collection of useful bash and batch scripts

### Batch scripts (Windows only)

To use scripts below, you have to create a link in PATH variables to the folder with scripts. 
After that you can call any script, just by its name, like that: `de web sh`

#### Docker short commands (aliases)

```cmd
:: Build docker image tagged by TAG_NAME into current folder
:: Equivalent to "docker build . -t TAG_NAME"
dbuild TAG_NAME

:: Clean unused images and clean up volume.
:: Note: Unused containers will not be affected. If you want to clean up such containers, you can add "call docker container prune -f" in dclean.bat manually
:: Equivalent to "docker image prune -f && docker volume prune -f" 
dclean

:: Up docker-compose environment. Executing this comand without "d" argument will up docker-compose in verbose mode.
:: If you want to up in daemon mode, just use "d" argument
:: Note: Use comand only in the folder with docker-compose.yaml script
:: Equivalent to "docker-compose up" or "docker-compose up -d" if "d" argument was presented 
dcu [d]

:: Stop docker-compose if it was launched in "daemon" mode
:: Note: Use comand only in the folder with docker-compose.yaml script
:: Equivalent to "docker-compose stop"
dcs

:: Execute into docker container
:: Note: By default comand will use BASH shell, if container doesn't have BASH, just pass a second argument after CONTAINER_NAME, which shell to use, for example "de CONTAINER_NAME sh"
:: Equivalent to "docker exec -it CONTAINER_NAME /bin/bash" or "docker exec -it CONTAINER_NAME /bin/YOUR_CUSTOM_SHELL" when second argument passed
de CONTAINER_NAME [mode]

:: Get the last 100 lines of docker conteiner logs
:: Note: By default it will just print logs, without "folowing". If it necessary to watch container work, use second argument "f" to do so.
:: Equivalent to "docker logs CONTAINER_NAME --tail 100" or "docker logs CONTAINER_NAME --tail 100 -f" if second "f" argument passed
dl CONTAINER_NAME [f]

:: Get into docker-machine ssh console, if your docker environment depend to docker-machine
:: Equivalent to "docker-machine ssh"
dms
```

Other scripts will be coming soon....
