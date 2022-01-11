#! /bin/bash

#ECHO COMMAND 
echo Hello Gaurav

#VARIABLES
NAME="gaurav"
echo "This is a $NAME file."
echo "This is a ${NAME} file."

#USER INPUT
read -p "What is your age:" AGE
echo "Your age is $AGE ."

#SIMPLE IF STATEMENT
if [ "$NAME" == "gaurav" ]
then
echo "Your name is Gaurav"
fi

#IF-ELSE
if [ "$NAME" == "Saurav" ]
then
echo "Your name is Gaurav"
else 
echo "Your name is not Gaurav"
fi

#ELSE-IF (elif)
if [ "$NAME" == "Saurav" ]
then
echo "Your name is Gaurav"
elif [ "$NAME" == "Saurav" ]
then
echo "Your name is Saurav"
else 
echo "Your name is not Gaurav not Saurav"
fi

#COMPARISON
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
echo "$NUM1 is greater than $NUM2"
else 
echo "$NUM1 is less than $NUM2"
fi
##########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if  val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
##########


#FILE CONDITIONS
FILE="test.text"
if [ -f "$FILE" ]
then
echo "$FILE is a file"
else
echo "$FILE is NOT a file"
fi
########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########


#CASE STATEMENT
read -p "Are you an engineer ? Y/N " ANSWER
case "$ANSWER" in 
  [yY] | [yY][eE][sS])
  echo "Please learn more and more languages"
   ;;
   [nN] | [nN][oO])
   echo "Go for the engineering degree"
   ;;
*)
  echo "Please enter y/yes or n/no"
  ;;
esac


# SIMPLE FOR LOOP
NAMES='Gaurav Saurav John Smith'
for NAME in $NAMES 
do
echo "Hello $NAME"
done


# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
 do 
  echo "Renaming $FILE to new-$FILE"
  mv $FILE $NEW-$FILE   
done


#WHILE LOOP -  READ THROUGH A LINE BY LINE 
LINE=1
while read -r CURRENT_LINE
 do 
  echo "$LINE : $CURRENT_LINE"
  ((LINE++))
done < "./new-1.txt"


#FUNCTION
function sayHello() {
  echo "Hello Gaurav"
}
sayHello


#FUNCTION WITH PARAMS
function greet(){
  echo "Hello i am $1 and i am $2"
}
greet "gaurav" "28"


#CREATE A FOLDER AND WRITE TO FILE    
mkdir hello 
touch "hello/world.txt"
echo "Hello world" >> "hello/world.txt"
echo "File Created"