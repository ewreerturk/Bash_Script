#!/bin/bash

#This script display various information to the screen.

# Display 'Hello'
echo 'Hello'

# Assing a valuie to a variable
WORD='script'

# Display that valuse using the variable
echo "$WORD"

#Demonstrate that single quotes cause variables to NOT get expandend
echo '$WORD'

#combine the variable with hard-coded text.
echo "This is a shell $WORD"

#Display contents of the variable using an alternative syntax
echo "Thhis is a shell ${WORD}"

#Append text to the variable
echo "${WORD}ing is fun!"

#Show how NOT to append text to a variable
#This does not work:
echo "$WORDing is fun"

#Create a new variable
ENDING='ed'

#Combine the tho variables
echo "This is ${WORD}${ENDING}"

#Change the value stored in the ENDING variable (reassignment)
ENDING='ing'
echo "${WORD}${ENDING}"

#Reassign value to ENDING

ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class!"