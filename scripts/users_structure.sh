echo "enter username"
read name
mkdir users
cd users
mkdir "$name"
cd "$name"
git init
mkdir photos
cd photos
for ((a = 2020; a <= 2024; a++))
do
	mkdir "$a"
	cd "$a"
	touch default.png
	cd ..
done
cd ..
git add .
git commit -m "created photos folder"
mkdir videos
cd videos
for ((a = 2020; a <= 2024; a++))
do
        mkdir "$a"
        cd "$a"
        touch default.mp4
        cd ..
done
cd ..
git add .
git commit -m "created videos folder"
mkdir documents
cd documents
for ((a = 2020; a <= 2024; a++))
do
        mkdir "$a"
        cd "$a"
        touch default.mp4
        cd ..
done
cd ..
git add .
git commit -m "created documents folder"
