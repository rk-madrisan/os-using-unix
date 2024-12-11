read -p "Enter the first number (a): " a
read -p "Enter the second number (b): " b

addition=$((a + b))
subtraction=$((a - b))
multiplication=$((a * b))

if [ $b -ne 0 ]; then
    division=$(echo "scale=2; $a / $b" | bc)
else
    division="undefined (division by zero)"
fi

echo "Results of operations on $a and $b:"
echo "Addition: $addition"
echo "Subtraction: $subtraction"
echo "Multiplication: $multiplication"
echo "Division: $division"

