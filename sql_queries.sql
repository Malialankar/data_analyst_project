-- Revenue by Gender
SELECT gender, SUM(purchase_amount) AS revenue
FROM customer_data
GROUP BY gender;

-- Customer Segmentation
SELECT customer_id,
CASE 
    WHEN purchase_count = 1 THEN 'New'
    WHEN purchase_count BETWEEN 2 AND 5 THEN 'Returning'
    ELSE 'Loyal'
END AS segment
FROM customer_data;
