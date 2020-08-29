# Randomize timeout from 1 second to 1 hour

timeout=0 #initialize

while [ "$timeout" -le 1 ] #Limit "low" by 1 second.
do
  timeout=$RANDOM
  let "timeout %= 3600"  # Limit "top" by 3600 seconds.
done

echo "Timeout: $timeout seconds"

sleep $timeout

# Randomize ammount of transaction from 0,5 to 19 SHIFT

number=0   #initialize
while [ "$number" -le 5 ] #Limit "low" by 0,5 SHIFT.
do
  number=$RANDOM
  let "number %= 190"  # Limit "top" by 19 SHIFT.
done

let "number*=10000000" # Multiply

curl -k -H  "Content-Type: application/json" -X PUT -d '{"recipientId": "18446744073709551616S", "amount": '$number', "secondSecret": "null", "secret": ""}' http://localhost:9405/api/transactions
