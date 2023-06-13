echo "Calculator"
echo "Enter the first Number : "
read num1
echo "Enter the second Number : "
read num2
echo "1st Number is : $num1"
echo "2nd Number is : $num2"
echo "Addition, Subaraction, Multiplication, Division"
echo "GreaterNumber, MatchNumber, ForLoop"
echo "Enter how to proceed : "
read decision
case $decision in
        #case 1
        "Addition")
        add=$(($num1 + $num2))
        echo "Answer : $add";;
        #case 2
        "Subraction")
        min=$(($num1 - $num2))
        echo "Answer : $min";;
        #case 3
        "Multiplication")
        mul=$(($num1 * $num2))
        echo "Answer : $mul";;
        #case 4
        "Division")
        div=$(($num1 / $num2))
        echo "Answer : $div";;
        #case 5
        "GreaterNumber")
        if [ $num1 -gt $num2 ]
        then
        echo "$num1 is Greater"
        else
        echo "$num2 is Greater"
        fi
        ;;
        #case 6
        "MatchNumber")
        if [ $num1 -gt $num2 ]
        then
        while [ $num2 -le $num1 ]
        do
        echo $num2
        num2=$(($num2+1))
        done
        else
        while [ $num1 -le $num2 ]
        do
        echo $num1
        num1=$(($num1+1))
        done
        fi
        ;;
        #case7
        "ForLoop")
        echo "Enter the Number to End the Print : "
        read n
        for ((i=1;i<=n;i++))
        do
        echo $i
        done
        echo "Printed until $n"
        ;;
        esac
