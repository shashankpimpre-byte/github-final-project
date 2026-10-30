
#!/bin/bash

echo "================================"
echo "     SIMPLE INTEREST CALCULATOR"
echo "================================"

read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time Period (years): " time

# Calculate simple interest
interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")

# Calculate total amount
total=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

echo ""
echo "-------- RESULTS --------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "-------------------------"
