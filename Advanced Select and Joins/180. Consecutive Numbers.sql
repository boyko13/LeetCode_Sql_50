Select Distinct(num) as ConsecutiveNums from (SELECT num,LAG(num, 1) OVER (ORDER BY id) AS prev1,LAG(num, 2) OVER (ORDER BY id) AS prev2 FROM Logs) as b
where num = prev1 AND num = prev2;
