echo "select folder"
read folder
echo "select operation: 1 - create 2 - rename 3 - delete"
read oper
echo "select name"
read name
cd "$folder"
if [[ "$oper" == 1 ]]; then
	touch "$name"
	URL="https://api.telegram.org/bot7807568169:AAFEHwd6wujmyeC4j8VBQl-61H-HjxU4-z8/sendMessage?chat_id=2107647599&text=created $folder/$name"
	curl "$URL"
elif [[ "$oper" == 2 ]]; then
	echo "new name:"
	read new
	mv "$name" "$new"
	URL="https://api.telegram.org/bot7807568169:AAFEHwd6wujmyeC4j8VBQl-61H-HjxU4-z8/sendMessage?chat_id=2107647599&text=renamed $folder/$name to $new"
        curl "$URL"
elif [[ "$oper" == 3 ]]; then
	rm "$name"
	URL="https://api.telegram.org/bot7807568169:AAFEHwd6wujmyeC4j8VBQl-61H-HjxU4-z8/sendMessage?chat_id=2107647599&text=deleted $folder/$name"
        curl "$URL"
else
	echo "invalid option"
fi
