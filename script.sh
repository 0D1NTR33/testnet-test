# Settings

secret=""
secondSecret="null"

minAmmount=1 # 0,001 SHIFT
maxAmmount=12000 # 12 SHIFT


# Randomize timeout from 1 second to 1 hour

timeout=0 #initialize

while [ "$timeout" -le 1 ] #Limit "low" by 1 second.
do
  timeout=$RANDOM
  let "timeout %= 3600"  # Limit "top" by 3600 seconds.
done

echo "Timeout: $timeout seconds"

sleep $timeout

# Randomize ammount of transaction

number=0   #initialize
while [ "$number" -le $minAmmount ] #Limit "low" by minimal ammount.
do
  number=$RANDOM
  let "number %= $maxAmmount"  # Limit "top" by maximal ammount.
done

let "number*=100000" # Multiply

curl -k -H  "Content-Type: application/json" -X PUT -d '{"recipientId": "18446744073709551616S", "amount": '$number', "secondSecret": "'"$secondSecret"'", "secret": "'"$secret"'"}' http://localhost:9405/api/transactions
