SELECT [Order ID], [Product Category], [Unit Price], [Unit Cost], [Order Qty],  ( ( ([Unit Price]  * [Order Qty] ) -  ( [Unit Cost]) * [Order Qty] ) /  ([Unit Price]  * [Order Qty] )  ) * 100 AS [ Profit Margin Percentage] 
,CASE

   WHEN ( ( ([Unit Price]  * [Order Qty] ) -  ( [Unit Cost]) * [Order Qty] ) /  ([Unit Price]  * [Order Qty] )  ) * 100 >= 60  THEN 'High'

  WHEN  ( ( ([Unit Price]  * [Order Qty] ) -  ( [Unit Cost]) * [Order Qty] ) /  ([Unit Price]  * [Order Qty] )  ) * 100 < 50  THEN 'Low'

   ELSE 'Low'
END AS [Percentage Status]
FROM Sales_Details$
ORDER BY [ Profit Margin Percentage] DESC






















/*Profit Margin Percenntage*/