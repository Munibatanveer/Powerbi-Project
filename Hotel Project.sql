
WITH hotels as (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT arrival_date_year, hotel,
round(sum((stays_in_weekend_nights+stays_in_week_nights)*adr), 0) as revenue 
FROM hotels
GROUP BY arrival_date_year, hotel;

--joining table
WITH hotel_new AS (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT * FROM hotel_new
JOIN dbo.market_segment$
ON hotel_new.market_segment = market_segment$.market_segment
JOIN dbo.meal_cost$
ON meal_cost$.meal = hotel_new.meal

SELECT * FROM [dbo].[market_segment$]
SELECT * FROM [dbo].[meal_cost$]

