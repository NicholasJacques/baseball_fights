# Baseball Fights
A user populated repository of baseball fights, bench clearing brawls and other notable moments.  Uses embedded videos from youtube/maybe other sources.

## Iteration 1
Build out crud functionality for fights. Fights index shows fights sorted by date occurred.  Show page has embedded video and fight info.

Fights have attributes: date_occurred, video_link, home_team, away_team, description
Fights belong to team

Build out crud functionality for teams with basic show pages

Teams have attributes: name, city, 
Team has many fights

## Iteration 2
Set site root to fights index.  
Create Players with attributes: name, position, has many fights
add players to fight
add players to create and update fight
Be able to view fights by player

## Iteration 3
Create user classes default, user, admin

default can only view pages and make no changes

user can add and edit fights, add players

admin has full crud abilities

## Iteration 4
Introduce rating to fights

Sort fights by rating

Random fight of the day on root