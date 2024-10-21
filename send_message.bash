echo "message:"
read message
URL="https://api.telegram.org/bot7807568169:AAFEHwd6wujmyeC4j8VBQl-61H-HjxU4-z8/sendMessage?chat_id=2107647599&text=$message"
curl "$URL"
