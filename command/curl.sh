# testing the given url
curl http://localhost:3000

# get response header
curl -i http://localhost:3000

# send POST request 
curl -d "first=chew&last=zzz" http://localhost:3000

# send PUT request
curl -X PUT -d "first=chew&last=zzz" http://localhost:3000

# curl with authentication
curl -u username:password http://localhost:3000

# download 
curl -o filename.txt http://localhost:3000