# Game-Database

# Description
As a course project, I designed and developed a database of characters within the popular Nintendo game franchise "Super Smash Brothers".

# Queries
**Retrieve the total amount of money that the player ‘Tweek’ has made from Tournament participation.**
SELECT sum(Placement_Prize) FROM Player_Tournament pt WHERE pt.Player_ID IN(SELECT p.Rank_Number FROM Pro_Players p WHERE p.Rank_Number AND p.Username = 'Tweek');

**List the names and debut games of the characters who have been used in more than 20 tournaments.**
SELECT ci.Character_Name, ci.Debut_Game FROM Character_Info ci WHERE Character_ID IN(SELECT cp.Roster_Number FROM Character_Played cp WHERE ci.Character_ID = cp.Roster_Number AND cp.Number_Of_Events >= 20);

**Retrieve the Usernames and team names of all players who primarily play a character that debuted in the game ‘Super Mario Bros.’**
SELECT Username, Team FROM Pro_Players WHERE Rank_Number IN (SELECT cp.Player_Rank FROM Character_Played cp WHERE Rank_Number = cp.Player_Rank AND cp.Roster_Number IN(SELECT ci.Character_ID FROM Character_Info ci WHERE ci.Debut_Game = 'Super Mario Bros.'));

**Return all of the names and ages of Professional Players who got first place in a tournament using their primary/main character.**
SELECT p.Real_Name, p.age FROM Pro_Players p WHERE p.Rank_Number IN(SELECT tp.Player_ID FROM Player_Tournament tp WHERE p.Rank_Number = tp.Player_ID AND tp.Placement_Number = 1 AND tp.Roster_ID IN(SELECT cp.Roster_Number FROM Character_Played cp WHERE tp.Roster_ID = cp.Roster_Number));

**Retrieve the real names and usernames of players who attended a tournament in 2019, but not in 2018.**
SELECT p.Real_Name, p.Username FROM Pro_Players p WHERE p.Rank_Number IN(SELECT pt.Player_ID FROM Player_Tournament pt WHERE p.Rank_Number = pt.Player_ID AND pt.Tournament_ID IN(SELECT t.Tournament_ID FROM Tournaments t WHERE pt.Tournament_ID = t.Tournament_ID AND t.Start_Date between '2019-01-01' and '2019-12-31' AND p.Rank_Number NOT IN(SELECT pt2.Player_ID FROM Player_Tournament pt2 WHERE p.Rank_Number = pt2.Player_ID AND pt2.Tournament_ID IN(SELECT t2.Tournament_ID FROM Tournaments t2 WHERE pt2.Tournament_ID = t2.Tournament_ID AND t2.Start_Date between '2018-01-01' and '2018-12-31'))));

# Database Design
![Image of Design](https://github.com/rearp/Game-Database/blob/main/CS%20370%20-%20Final%20Project%20-%20Data%20Model%20-%20Ryan%20Earp%2C%20v7-2020-05-03.png)

# Project Status
This project has been completed.
