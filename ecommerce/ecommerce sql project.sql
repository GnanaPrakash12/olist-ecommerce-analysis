use ecommerce;
SHOW COLUMNS FROM ecommerce;
SELECT
    `Weekday/weekend` AS day_type,
    payment_type,
    COUNT(*) AS total_orders,
    SUM(payment_value) AS total_payment_value
FROM ecommerce
GROUP BY `Weekday/weekend`, payment_type
ORDER BY `Weekday/weekend`, payment_type;

#2
SELECT 
    COUNT(*) AS count_orders_5star_creditcard
FROM ecommerce
WHERE review_score = 5
  AND payment_type = 'credit_card';
  
  #3
  SELECT 
    AVG(Shippingdays) AS average_shipping_days_petshop
FROM ecommerce
WHERE product_category_name = 'pet_shop';

#4
SELECT 
    AVG(price) AS avg_price,
    AVG(payment_value) AS avg_payment_value
FROM ecommerce
WHERE customer_city = 'sao paulo';

#5
SELECT
    review_score,
    AVG(Shippingdays) AS avg_shipping_days
FROM ecommerce
GROUP BY review_score
ORDER BY review_score;




