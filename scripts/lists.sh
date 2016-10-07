# index

curl --include --request GET http://localhost:3000/lists \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2"


#show

curl --include --request GET http://localhost:3000/lists/112 \
  --header "Authorization: Token token=BAhJIiUyZTU4Yzg2ODU2MWMzOGQwOWJjZWFhZjk1NjA3MzJjNQY6BkVG--aba5657d34963c0608b49a06d35e4351cb8976f2"

#create

curl --include --request POST http://localhost:3000/lists \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVlMzE2NDM4N2NmMTZiNGFiMzBmZGRhMmNjNjY0NTMwYgY6BkVG--8f58450ba2f5c939ecd709a01f02bf8006d382a5" \
  --data '{
    "list": {
      "title": "Weekend To Dos"
    }
  }'

#update

curl --include --request PATCH http://localhost:3000/lists/112 \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVlZjkxZDY3YjBmZDZhNmY1MWQyYjlkOWYxYWIxNWJlNwY6BkVG--75c3e345e7c19db2a88f2c579c8eed9b0137a540" \
  --data '{
    "list": {
      "title": "To Do Today"
    }
  }'


#delete

curl --include --request DELETE http://localhost:3000/lists/112 \
  --header "Authorization: Token token=BAhJIiVlZjkxZDY3YjBmZDZhNmY1MWQyYjlkOWYxYWIxNWJlNwY6BkVG--75c3e345e7c19db2a88f2c579c8eed9b0137a540" \
  --header "Content-Type: application/json"


# user 1
id: 12
token: BAhJIiVmYzUwNzg3MGIxYTg3ZTNhZmY3MmIyODQ2NzczZGIzOQY6BkVG--fc71d8b240066c64863d4f3bed057f2e2a8e0af9

# user 1's list id
112

# user 2
id: 13
token: BAhJIiVlZjkxZDY3YjBmZDZhNmY1MWQyYjlkOWYxYWIxNWJlNwY6BkVG--75c3e345e7c19db2a88f2c579c8eed9b0137a540
