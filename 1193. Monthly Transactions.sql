Select date_format(trans_date, "%Y-%m") as month, country, count(amount) as trans_count, Sum(Case when state = 'approved' then 1 else 0 end) as approved_count, sum(amount) as trans_total_amount, Sum(Case when state = 'approved' then amount else 0 end) as approved_total_amount From Transactions 
group by month,country
