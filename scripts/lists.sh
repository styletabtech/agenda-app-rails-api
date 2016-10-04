# index

curl --include --request GET http://localhost:3000/lists \
  --header "Authorization: Token token=$TOKEN"


#show

curl --include --request GET http://localhost:3000/lists/$ID \
  --header "Authorization: Token token=$TOKEN"

#create

curl --include --request POST http://localhost:3000/lists \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "title": "Weekend To Dos"
    }
  }'

#update

curl --include --request PATCH http://localhost:3000/lists/3 \
  --header "Content-Type: application/json" \
  --data '{
    "list": {
      "title": "To Do Today"
    }
  }'


#delete

curl --include --request DELETE http://localhost:3000/lists/4 \
  --header "Content-Type: application/json"
