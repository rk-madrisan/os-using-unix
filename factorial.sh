echo "Enter the No. for the FACTORIAL
Value:" read num fact=1
for((i=2;i<=num;i++))
{
fact=$(($fact*$i))
}
echo $fact
