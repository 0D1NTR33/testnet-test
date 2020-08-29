Install it to your TestNet Node VPS:

```
git clone https://github.com/MxShift/testnet-test
```

Settings:

```
cd testnet-test
nano script.sh
```

Edit `script.sh` with
```
secret="your 12 words of secret passphrase"
```

or, also if you have second secret

```
secondSecret="your second secret"
```

Save data to script file
```
CTRL + X
Y
```

*Settings for Cron:*

```
crontab -e
```
paste it to run script every hour
```
#Test for TestNet
@hourly bash ~/testnet-test/script.sh
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
