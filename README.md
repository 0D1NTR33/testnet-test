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
@hourly ~/shift-pool-t/test.sh
```

or, to run script daily

```
#Test for TestNet
@daily bash ~/shift-pool-t/test.sh
```
Save data to cron
```
CTRL + X
Y
```
