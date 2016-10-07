#index

curl --include --request GET http://localhost:3000/items \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2"


#show

curl --include --request GET http://localhost:3000/items/2 \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2"



#create

curl --include --request POST http://localhost:3000/items \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2" \
  --data '{
    "item": {
      "name": "Water the plants",
      "due_date": "2016-10-4",
      "priority": "medium",
      "list_id": "112",
      "due_time": "19:00"
    }
  }'



#update

curl --include --request PATCH http://localhost:3000/items/93 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2" \
  --data '{
    "item": {
      "name": "Feed the cat",
      "due_date": "2016-10-1",
      "priority": "high",
      "due_time": "14:00"
    }
  }'


#delete

curl --include --request DELETE http://localhost:3000/items/93 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2"
