echo Starting memos ...

chmod +x ./memos

if [ ! -d ./data ];then
    mkdir ./data
fi

HOST=${REPL_SLUG}.${REPL_OWNER}.repl.c

while true
do
sleep 30
curl -s "https://$HOST" >/dev/null 2>&1
echo "$(date +'%Y-%m-%d %H:%M:%S') Keeping online ..."
done &

./memos -d ./data -m prod -p 80