#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "truncate table teams, games")"

cat games.csv | while IFS="," read year round winner opponent winner_goals opponent_goals
do 
  if [[ $year != "year" ]]
  then 
    #check if the winner team exists 
    winner_id=$($PSQL "SELECT team_id from teams WHERE name='$winner'")
    opponent_id=$($PSQL "SELECT team_id from teams WHERE name='$opponent'")
      if [[ -z $winner_id ]]
      then
        echo "$($PSQL "insert into teams(name) values('$winner')")"
        winner_id=$($PSQL "SELECT team_id from teams WHERE name='$winner'")
        echo inserted $winner with the id $winner_id
      fi

      if [[ -z $opponent_id ]]
      then
        echo "$($PSQL "insert into teams(name) values('$opponent')")"
        opponent_id=$($PSQL "SELECT team_id from teams WHERE name='$opponent'")
        echo inserted $opponent with the id $opponent_id
      fi
    echo "$($PSQL "insert into games(round, year, winner_id, opponent_id, winner_goals, opponent_goals ) values('$round', $year, $winner_id, $opponent_id, $winner_goals, $opponent_goals)")"
    # echo -e " year is $year and opponent goals are $opponent_goals"
  fi
done 
