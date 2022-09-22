#!/bin/bash
set -m
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
int='^[0-9]{1,4}$'

GAME(){

if [[ $GUESS =~ $int ]]
  then
    if [[ $GUESS < $random ]]
    then
    GUESSES=$((GUESSES+1))
    echo "It's higher than that, guess again:"
    read GUESS
    GAME
    
    elif [[ $GUESS > $random ]]
    then
    GUESSES=$((GUESSES+1))
    echo "It's lower than that, guess again:"
    read GUESS
    GAME
    
    else [[ $GUESS == $random ]]
    
    echo "You guessed it in $GUESSES tries. The secret number was $random. Nice job!"
    USER_ID=$(echo $($PSQL "select user_id from users where username='$USERNAME'")| sed -E 's/^ *| *$//g')
    INSERT_RESULT=$($PSQL "insert into games (guesses, user_id) values ($GUESSES,$USER_ID)")
   
    fi
  else
  echo "That is not an integer, guess again:"
  read GUESS
  GAME
fi
}
ASK(){
GUESSES=1
echo "Enter your username:"
read USERNAME
USERNAME_EXISTS=$($PSQL "select user_id from users where username = '$USERNAME'")
if [[ ! -z $USERNAME_EXISTS ]]
  then
  echo "Welcome back, $USERNAME! You have played $($PSQL "select count(game_id) from games inner join users using (user_id) where username ='$USERNAME'") games, and your best game took $($PSQL "select min(guesses) from games inner join users using (user_id) where username = '$USERNAME'") guesses."
  random=$(($RANDOM % 1000 + 1))
  
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  GAME
  else
  INSERT_USER_RESULT=$($PSQL "insert into users (username) values ('$USERNAME')")
  if [[ $INSERT_USER_RESULT == "INSERT 0 1" ]]
    then  
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    random=$(($RANDOM % 1000 + 1))
    
    echo "Guess the secret number between 1 and 1000:"
    read GUESS
    GAME
  fi
fi
}
ASK
