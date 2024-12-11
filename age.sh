
read -p "Enter your birth year (YYYY): " birth_year
read -p "Enter your birth month (MM): " birth_month
read -p "Enter your birth day (DD): " birth_day


current_year=$(date +%Y)
current_month=$(date +%m)
current_day=$(date +%d)

age=$((current_year - birth_year))

if ((current_month < birth_month || (current_month == birth_month && current_day < birth_day))); then
    age=$((age - 1))
fi

echo "You are $age years old."

