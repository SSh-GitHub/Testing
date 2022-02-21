FOR /f "tokens=*" %%i IN ('docker ps -q') DO docker container stop %%i
docker container prune -f
docker-compose ps
pause