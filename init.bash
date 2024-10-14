echo "Enter name"
read name
echo "Enter path"
read path
mkdir "$path/$name"
cd "$path/$name"
mkdir src
cd src
mkdir scripts
mkdir styles
mkdir images
cd ..
touch README.md
echo "#$name" >> README.md
touch .gitignore
echo "done"
