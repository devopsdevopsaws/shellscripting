#!/bin/bash
N1=$1
N2=$2
echo "*************************************"
echo "Adding the above two numbers"
N=$((N1+N2))
echo "Addition Result is :$N"
echo "*************************************"

echo "*************************************"
echo "subratcting the above two numbers"
N=$((N1-N2))
echo "subtrction Result is :$N"
echo "*************************************"

echo "*************************************"
echo "Multiplying the above two numbers"
N=$((N1*N2))
echo "Multiplication Result is :$N"
echo "*************************************"

echo "*************************************"
echo "Dividing the above two numbers"
N=$((N1/N2))
echo "Division Result is :$N"
echo "*************************************"