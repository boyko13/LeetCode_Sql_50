Select user_id, Sum(Case when follower_id is not null then 1 else 0 end) as followers_count from Followers
group by user_id 
order by user_id asc
