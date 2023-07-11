https://datalemur.com/questions/sql-histogram-tweets

WITH cte_tweets
AS (
	SELECT user_id
		,COUNT(tweet_id) AS Tweets
	FROM tweets
	WHERE DATE_PART('Year', tweet_date) = 2022
	GROUP BY user_id
	)
SELECT Tweets AS tweet_bucket
	,Count(user_id) AS users_num
FROM cte_tweets
GROUP BY Tweets
