
echo "command is: $1"

var=$(echo -n $1 | base64)

encodedoutput=$(curl -X POST -s http://172.18.0.200:4000 -H "Content-Type: application/x-www-form-urlencoded" -d "command=$var")

output=$(echo -n $encodedoutput | base64 --decode)

echo "output is $output"
