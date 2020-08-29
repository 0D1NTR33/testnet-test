Settings:

```
"secret": "your 12 words of secret passphrase"

"secondSecret": "null"
```

or, if you have second secret

```
"secondSecret": "your second secret"
```


*Settings for Cron:*

```
crontab -e
```
paste it to run script every hour
```
#Test for TestNet
@hourly ~/testnet-test/script.sh
```

or, to run script daily

```
#Test for TestNet
@daily bash ~/testnet-test/script.sh
```
Save data to cron
```
CTRL + X
Y
```
