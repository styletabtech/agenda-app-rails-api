# index


#show


#create

curl --include --request POST http://localhost:3000/items \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "Take out the trash",
      "due_date": "2016-10-3",
      "priority": "high",
      "list_id": "1",
      "due_time": "14:00"
    }
  }'

#update

curl --include --request PATCH http://localhost:3000/items/2 \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "Feed the cat",
      "due_date": "2016-10-1",
      "priority": "high",
      "due_time": "14:00"
    }
  }'


#delete

curl --include --request DELETE http://localhost:3000/items/3 \
  --header "Content-Type: application/json"
