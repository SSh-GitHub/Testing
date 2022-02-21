docker cp .\sh\create-topics.sh broker:/home
docker exec -it broker bash /home/create-topics.sh
docker cp .\sh\produce-messages.sh schema-registry:/home
docker exec -it schema-registry bash /home/produce-messages.sh
pause