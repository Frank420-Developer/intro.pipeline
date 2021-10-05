#!/bin/sh
# A simple script with a function...

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift; shift;
  #Having sgifted twice
  COMMENTS=$0
  echo "adding user $USER ....."
  echo useradd -c "$COMMENTS" $USER
  echo passwrd $USER $PASSWORD
  echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

###
# CUERPO PRINCIPAL DEL SCRIPT AQUI

echo "Script begins......."
add_a_user bob sanchez bob el constructor
add_a_user alex badpassword alex pumas gol
add_a_user pancho vera dev junior
echo "el final de nuestro script......"
