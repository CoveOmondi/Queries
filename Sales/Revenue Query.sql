SELECT [Product Category], [Unit Price], [Unit Cost], [Order Qty],  ([Unit Price]  * [Order Qty] )AS REVENUE 
FROM Sales_Details$
ORDER BY REVENUE DESC


/*Top categories revenue*/