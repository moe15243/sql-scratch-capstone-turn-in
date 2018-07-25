Select *
From survey
Limit 10;

Select question, COUNT(DISTINCT user_id) AS 'Distinct Users'
From survey
Group by 1;

Select *
From quiz
Limit 5;

Select *
From home_try_on
Limit 5;

Select *
From purchase
Limit 5;

Select Distinct q.user_id, h.user_id IS NOT NULL As 'is_home_try_on', h.number_of_pairs, p.user_id IS NOT NULL As 'is_purchase'
From quiz q
Left Join home_try_on h
On q.user_id = h.user_id
Left Join purchase p
On p.user_id = q.user_id
Limit 10;

