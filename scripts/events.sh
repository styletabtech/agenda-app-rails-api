# index


#show


#create

curl --include --request POST http://localhost:3000/events \
  --header "Content-Type: application/json" \
  --data '{
    "event": {
      "name": "Dinner with Mom",
      "date": "2016-10-9",
      "time": "16:00",
      "kind": "social",
      "location": "Maggianos",
      "description": "",
      "user_id": "2"
    }
  }'

#update

curl --include --request PATCH http://localhost:3000/events/2 \
  --header "Content-Type: application/json" \
  --data '{
    "event": {
      "name": "Spin class",
      "date": "2016-10-4",
      "time": "19:00",
      "kind": "exercise",
      "location": "SoulCycle",
      "description": "Instructor: Joe",
      "user_id": "2"
    }
  }'


#delete

curl --include --request DELETE http://localhost:3000/events/2 \
  --header "Content-Type: application/json"
