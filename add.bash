#!/bin/bash
echo "Numbers: $1 $2 $3"
echo $(echo "(($1+$2+$3)*12)" | bc -l )


