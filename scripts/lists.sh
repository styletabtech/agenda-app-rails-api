# index


#show


#create

curl --include --request POST http://localhost:3000/lists \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "title": "Weekend To Dos"
    }
  }'

#update

curl --include --request PATCH http://localhost:3000/lists/1 \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "title": "To Do Today"
    }
  }'


#delete

curl --include --request DELETE http://localhost:3000/lists/3 \
  --header "Content-Type: application/json"
