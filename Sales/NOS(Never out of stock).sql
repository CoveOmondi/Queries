WITH CTEM1 AS (

SELECT  [Order Date], DATENAME(MONTH, [Order Date]) AS MonthOfSale,  MIN(DATENAME(MONTH, [Order Date]))  OVER (PARTITION BY [Product Name] ) AS [First Sale]

FROM Sales_Details$

GROUP BY [Product Name], DATENAME(MONTH, [Order Date]) , [Order Qty] , [Order ID], [Order Date]

), 

CTEM2 AS (

SELECT  DATENAME(MONTH, [Order Date]) AS MonthofSale2 


FROM CTEM1

GROUP BY DATENAME(MONTH, [Order Date])

)

SELECT   * , A.[Recurrence_Sales],

SUM( CASE WHEN MonthofSale2 <> [First Sale] THEN 1 ELSE 0 
END ) AS 'Recurrence' 

FROM CTEM2

INNER JOIN (

  SELECT  CTEM1. MonthOfSale,

  SUM (CASE WHEN DATENAME(MONTH, [Order Date]) <> [First Sale] THEN 1 ELSE 0 END) AS 'Recurrence_Sales'

  FROM CTEM1

  GROUP BY DATENAME(MONTH, [Order Date])

) A

ON CTEM2. [MonthofSale2] = A. MonthOfSale