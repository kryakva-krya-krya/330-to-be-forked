echo "insert path"
read path
read text < "$path"
url="https://api.telegram.org/bot7807568169:AAFEHwd6wujmyeC4j8VBQl-61H-HjxU4-z8/sendMessage?chat_id=-4539033234&text=readed file $path: $text"
curl $url
