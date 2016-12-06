#!/user/bash

ps aux | grep nginx

echo "enter the port no to kill"
read var
sudo kill -9 $var
