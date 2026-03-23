#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  DATA=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types ON properties.type_id = types.type_id WHERE atomic_number::TEXT = '$1' OR symbol = '$1' OR name = '$1'")
  
  if [[ -z $DATA ]]
  then
    echo "I could not find that element in the database."
  else
    echo "$DATA" | while IFS="|" read ATOMIC_NUMBER SYMBOL NAME TYPE MASS MELTING BOILING 
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    done
   fi 
fi