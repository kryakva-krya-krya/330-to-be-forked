echo "message:"
read message
echo "id:"
read id
echo "token:"
read token
URL="https://api.telegram.org/bot$token/sendMessage?chat_id=$id&text=$message"
curl "$URL"
