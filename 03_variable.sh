#!/bin/bash
N1=$1
N2=$2
echo "*************************************"
ech0 "Adding the above two numbers"
N=$((N1+N2))
echo "Addition Result is :$N"
echo "*************************************"

echo "*************************************"
ech0 "subratcting the above two numbers"
N=$((N1-N2))
echo "subtrction Result is :$N"
echo "*************************************"

echo "*************************************"
ech0 "Multiplying the above two numbers"
N=$((N1*N2))
echo "Multiplication Result is :$N"
echo "*************************************"

echo "*************************************"
ech0 "Dividing the above two numbers"
N=$((N1/N2))
echo "Division Result is :$N"
echo "*************************************"