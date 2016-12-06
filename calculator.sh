clear
sum=0
i="y"

echo " Enterthe first number"
read n1
echo "Enter second number"
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
case $ch in
    1)sum=$(echo $n1 + $n2 | bc)
     echo "Sum ="$sum;;
        2)sum=$(echo $n1 - $n2 | bc)
     echo "Sub = "$sum;;
    3)sum=$(echo $n1 \* $n2 | bc)
     echo "Mul = "$sum;;
    4)sum=$(echo $n1 / $n2 | bc -l)
     echo "Div = "$sum;;
    *)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done    
