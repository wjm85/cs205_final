#!/bin/bash
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.
#Create a variable for the data file
DATA=$1
echo $1
#Create a function that finds the total number of pokemon
TOTAL=awk END {print NR-1} $DATA
#Create a function that calculates the average HP
HP=awk {total += $8} END {print total/NR-1 } $DATA
#Create a function that calculates the average Attack
ATTACK=awk {total += $9} END {print total/NR-1 } $DATA

echo "======= SUMMARY OF POKEMON.DAT ======"
echo "   Total Pokemon: [$TOTAL]" awk END {print NR-1} DATA
echo "   Avg. HP: [$HP]"
echo "   Avg. Attack: [$ATTACK]"
echo "======= END SUMMARY ======="


