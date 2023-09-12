-- Cleansed DIM_Customer Table
SELECT 
	c.customerkey AS [CustomerKey],
    --   ,[GeographyKey]
    --  ,[CustomerAlternateKey]
    --  ,[Title]
    c.firstname AS [FirstName],
    --   ,[MiddleName]
    c.lastname AS [LastName],
    c.firstname + ' ' + lastname  AS [Full Name],
    --  ,[BirthDate]
    --  ,[MaritalStatus]
    --  ,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' Then 'Female' END AS Gender,
    --  ,[EmailAddress]
    --  ,[YearlyIncome]
    --  ,[TotalChildren]
    --  ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
    --  ,[FrenchEducation]
    --  ,[EnglishOccupation]
    --  ,[SpanishOccupation]
    --  ,[FrenchOccupation]
    --  ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
    --  ,[Phone]
	c.datefirstpurchase AS DateFirstPurchase,
    --  ,[DateFirstPurchase]
	g.city AS [Customer City] 
    --  ,[CommuteDistance]
  FROM 
	dbo.dimcustomer AS c
	LEFT JOIN dbo.dimgeography AS g on g.geographykey = c.geographykey -- Joined in Customer City from Geography Table 
  ORDER BY
	CustomerKey ASC -- Ordered List by Customer Key
  --  [AdventureWorksDW2019].[dbo].[DimCustomer]
