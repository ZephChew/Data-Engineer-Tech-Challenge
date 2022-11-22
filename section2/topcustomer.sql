SELECT customer.custID, customer.name, sum(transaction.price)
FROM TRANSACTION
JOIN customer ON transaction.custID = customer.custID
GROUP BY customer.custID;