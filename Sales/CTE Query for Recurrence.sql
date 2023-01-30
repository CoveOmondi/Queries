WITH CTEM1 AS (

SELECT [Product Name], [Order Date], DATENAME(MONTH, [Order Date]) AS MonthOfSale,  MIN(DATENAME(MONTH, [Order Date]))  OVER (PARTITION BY [Product Name] ) AS 'First Sale'




FROM Sales_Details$

GROUP BY [Product Name], DATENAME(MONTH, [Order Date]), [Order Qty] , [Order ID], [Order Date]

)

SELECT *, STRING_AGG(DATENAME(MONTH, [Order Date]), '') WITHIN GROUP (ORDER BY   [Product Name]DESC ),
SUM(CASE WHEN MonthOfSale <> [First Sale] THEN 1 ELSE 0 
END )AS 'Recurrence'

FROM CTEM1
WHERE [Order Date] LIKE '%2014%'
GROUP BY [Product Name], DATENAME(MONTH, [Order Date]), MonthOfSale, [First Sale], [Order Date]
ORDER BY   [Product Name]DESC 
