SELECT 
    v.customer_id, 
    COUNT(v.visit_id) AS count_no_trans
FROM 
    Visits v
LEFT JOIN 
    Transactions t 
ON 
    t.visit_id = v.visit_id
WHERE 
    t.transaction_id IS NULL 
