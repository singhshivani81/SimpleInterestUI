#!/bin/bash

# Simple Interest Calculator

# Prompt user for inputs
echo "Enter the principal amount:"
read p

echo "Enter the rate of interest (per year):"
read r

echo "Enter the time period in years:"
read t

# Input validation
if [[ -z "$p" || -z "$r" || -z "$t" ]]; then
  echo "Error: All inputs (principal, rate, and time) are required."
  exit 1
fi

# Calculate simple interest
si=$(echo "scale=2; $p * $r * $t / 100" | bc)

# Display the result
echo "The Simple Interest is: $si"
