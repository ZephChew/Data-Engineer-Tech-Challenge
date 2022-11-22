SELECT car.manufacturer, count(car.manufacturer) as sales
FROM transaction
JOIN car ON transaction.carID = car.carID
WHERE transaction.txnDate BETWEEN '2022-11-01' AND '2022-11-30'
GROUP BY car.manufacturer
ORDER BY sales
DESC LIMIT 3;