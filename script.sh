# Settings

secret=""
secondSecret="null"

minAmount=1 # 0,001 SHIFT
maxAmount=12000 # 12 SHIFT


# Randomize timeout from 1 second to 1 hour

timeout=0 #initialize

while [ "$timeout" -le 1 ] #Limit "low" by 1 second
do
  timeout=$RANDOM
  let "timeout %= 3600"  # Limit "top" by 3600 seconds
done

echo "Timeout: $timeout seconds"

sleep $timeout

# Randomize amount of transaction

number=0   #initialize
while [ "$number" -le $minAmount ] #Limit "low" by minimal amount
do
  number=$RANDOM
  let "number %= $maxAmount"  # Limit "top" by maximal amount
done

let "number*=100000" # Multiply

curl -k -H  "Content-Type: application/json" -X PUT -d '{"recipientId": "18446744073709551616S", "amount": '$number', "secondSecret": "'"$secondSecret"'", "secret": "'"$secret"'"}' http://localhost:9405/api/transactions
