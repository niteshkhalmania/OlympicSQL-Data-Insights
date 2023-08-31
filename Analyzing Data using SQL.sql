-- Task 1: Calculate the total number of distinct Olympic games that have been held
SELECT count(DISTINCT Games) as total_olympics_games
FROM olympics_history;

-- Task 2: List all distinct Olympic games held so far, ordering the results by year
SELECT DISTINCT Year, season, City
FROM olympics_history
ORDER BY Year;

-- Task 3: Calculate the total number of nations that participated in each Olympic game
SELECT Games, COUNT(DISTINCT NOC) AS total_participating_nations
FROM olympics_history
GROUP BY Games
ORDER BY Games;

-- Task 4: Identify nations that have participated in all Olympic games
SELECT NOC 
FROM (
    -- Calculate the total number of games each nation (NOC) has participated in
    SELECT NOC, COUNT(DISTINCT Games) AS total_games_participated
    FROM olympics_history
    GROUP BY NOC
) AS nations_games
JOIN (
    -- Calculate the total number of distinct games in the dataset
    SELECT COUNT(DISTINCT Games) AS total_games
    FROM olympics_history
) AS total_games_count
ON nations_games.total_games_participated=total_games_count.total_games
ORDER BY NOC;

-- Task 5: Calculate the number of unique athletes who have won a gold medal in the Olympics
SELECT COUNT(DISTINCT NAME) AS total_unique_gold_medalist
FROM olympics_history
WHERE Medal = 'Gold';

-- Task 6: Identify sports that were played only once in the Olympics
SELECT sports_with_count.Sport AS sport, sports_with_count.num_of_games AS no_of_games, olympics_history.Games AS games
FROM (
    -- Count the number of games each sport was played
    SELECT Sport, COUNT(DISTINCT Games) AS num_of_games
    FROM olympics_history
    GROUP BY Sport
) AS sports_with_count
JOIN olympics_history
ON sports_with_count.Sport = olympics_history.Sport
WHERE sports_with_count.num_of_games = 1
ORDER BY sports_with_count.Sport;

-- Task 7: Fetch the total number of sports played in each Olympic game
SELECT Games, COUNT(DISTINCT Sport) AS no_of_sports
FROM olympics_history
GROUP BY Games
ORDER BY no_of_sports DESC;

-- Task 8: Identify the oldest athlete to win a gold medal
SELECT Name, Sex, Age, Team, Games, City, Sport, Event, Medal, DENSE_RANK() OVER (ORDER BY Age DESC) AS rnk
FROM olympics_history
WHERE Medal = 'Gold'
ORDER BY Age DESC
LIMIT 1;

-- Task 9: Identify the top 5 athletes who have won the most gold medals
SELECT Name, Team, COUNT(*) AS gold_medals
FROM olympics_history
WHERE Medal = 'Gold'
GROUP BY Name, Sex
ORDER BY gold_medals DESC
LIMIT 5;

-- Task 10: Identify the top 5 athletes who have won the most medals (of any kind)
SELECT
    Name,
    Team,
    COUNT(*) AS total_medals
FROM
    olympics_history
WHERE
    Medal IN ('Gold', 'Silver', 'Bronze')
GROUP BY
    Name,
    Team
ORDER BY
    total_medals DESC
LIMIT 5;

-- Task 11: Identify the top 5 most successful countries in the Olympics, based on the number of medals won
WITH CountryMedals AS (
    SELECT
        NOC AS region,
        COUNT(*) AS total_medals
    FROM
        olympics_history
    WHERE
        Medal IN ('Gold', 'Silver', 'Bronze')
    GROUP BY
        region
)
SELECT
CASE
    WHEN region = 'NOR' THEN 'Norway'
    WHEN region = 'ITA' THEN 'Italy'
    WHEN region = 'FIN' THEN 'Finland'
    WHEN region = 'NED' THEN 'Netherlands'
    WHEN region = 'ESP' THEN 'Spain'
    ELSE region
END AS region,
    total_medals,
    DENSE_RANK() OVER (ORDER BY total_medals DESC) AS rnk
FROM
    CountryMedals
ORDER BY
    total_medals DESC
LIMIT 5;

-- Task 12: Identify the sport/event in which India has won the highest number of medals
SELECT
    Sport,
    Event,
    COUNT(*) AS total_medals
FROM
    olympics_history
WHERE
    Team = 'India' AND Medal IN ('Gold', 'Silver', 'Bronze')
GROUP BY
    Sport, Event
ORDER BY
    total_medals DESC
LIMIT 1;

-- Task 13: Break down all Olympic games where India won a medal in Hockey, and count the number of medals for each game
SELECT
    Games,
    COUNT(*) AS total_medals
FROM
    olympics_history
WHERE
    Team = 'India' AND Sport = 'Hockey' AND Medal IN ('Gold', 'Silver', 'Bronze')
GROUP BY
    Games
ORDER BY
    total_medals DESC;
