echo "Subject:"
read NameOfSubject
echo "Number of students"
read NumOfStudents
mkdir $NameOfSubject
cd $NameOfSubject
mkdir Course1
cd Course1
mkdir Students
touch Marks.txt
for ((i = 1; i <= $NumOfStudents; i++))
do
	echo "Student $i:"
	read Name
	echo "$Name: 5," >> Marks.txt
	touch Students/$Name.txt
done
cd ..
cp -r Course1 Course2
