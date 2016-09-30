# index


#show


#create

curl --include --request POST http://localhost:3000/items \
  --header "Content-Type: application/json" \
  --data '{
    "item": {
      "name": "Water the plants",
      "due_date": "2016-10-4",
      "priority": "medium",
      "list_id": "1",
      "due_time": "19:00"
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
