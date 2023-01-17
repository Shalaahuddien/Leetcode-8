/* Write your T-SQL query statement below */


SELECT account_id
	,day
	,SUM(CASE 
			WHEN type = 'Deposit'
				THEN amount
			ELSE - 1 * amount
			END) OVER (
		PARTITION BY account_id ORDER BY day
		) AS balance
FROM Transactions
ORDER BY 1
	,2