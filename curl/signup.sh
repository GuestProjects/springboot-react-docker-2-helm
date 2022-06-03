curl -X POST localhost:30808/api/auth/signup \
	-H "Content-Type: application/json" \
	-d '{"username": "aasaleem", "password": "aamir123", "role": ["admin"]}'

curl -X POST localhost:30808/api/auth/signup \
	-H "Content-Type: application/json" \
	-d '{"username": "tammy", "password": "tammy123", "role": ["user"]}'
