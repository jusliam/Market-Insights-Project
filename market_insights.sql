-- Justin Hector Market Insights Project

-- Creating the database
CREATE DATABASE market_insights;

-- using the database
USE market_insights;

/* MySQL's Table Data Import Wizard was used to import the excel files into the tables: cities, respondents
   and survey_responses */

-- Getting details on the tables
DESCRIBE cities;
DESCRIBE respondents;
DESCRIBE survey_responses;

-- Q1: Who prefers more energy drinks? (male/female/non-binary)
SELECT Gender, COUNT(Gender) AS Frequency FROM respondents
INNER JOIN survey_responses
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Gender
ORDER BY Frequency DESC;

-- Q2: Which age groups prefer energy drinks more? 
SELECT Age 'Age Group', COUNT(Age) AS Frequency, COUNT(Age) / (SELECT COUNT(*) FROM respondents) * 100 AS Percentage FROM respondents
INNER JOIN survey_responses
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Age
ORDER BY Frequency DESC;

-- Q3: Which type of marketing reaches the most youth (15-30)?
SELECT Marketing_channels, COUNT(Marketing_channels) AS 'Frequency', 
COUNT(Marketing_channels) / (SELECT COUNT(*) FROM respondents) * 100 AS Percentage FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
WHERE respondents.Age IN ('15-18','19-30')
GROUP BY Marketing_channels
ORDER BY 2 DESC;

-- Q4: What are the preferred ingredients of energy drinks among respondents?
SELECT Ingredients_expected, COUNT(Ingredients_expected) AS 'Most Desired Ingredients' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Ingredients_expected
ORDER BY 2 DESC;

-- Q5: What packaging preferences do respondents have for energy drinks?
SELECT Packaging_preference 'Preferred Packaging', COUNT(Packaging_preference) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Packaging_preference
ORDER BY 2 DESC;

-- Q6: Who are the current market leaders?
SELECT Current_brands 'Market Leaders', COUNT(Current_brands) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Current_brands
ORDER BY 2 DESC;

-- Q7: What are the primary reasons consumers prefer those brands over ours?
SELECT Reasons_for_choosing_brands 'Main Reason', COUNT(Reasons_for_choosing_brands) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Reasons_for_choosing_brands
ORDER BY 2 DESC;

-- Q8: Which marketing channel can be used to reach more customers?
SELECT Marketing_channels, COUNT(Marketing_channels) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Marketing_channels
ORDER BY 2 DESC;

-- Q9: How effective are different marketing strategies and channels in reaching our customers?
SELECT Packaging_preference AS 'Preferred Packaging' , COUNT(Packaging_preference) 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Packaging_preference
ORDER BY 2 DESC;

SELECT Limited_edition_packaging AS 'Prefer Limited Edition' , COUNT(Limited_edition_packaging) 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

SELECT Price_range AS 'Price Range Preferred' , COUNT(Price_range) 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

-- Q10: What do people thing about our brand? (overall rating)
SELECT Taste_experience AS 'Overall Rating', COUNT(Taste_experience) 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
WHERE Tried_before = 'Yes'
GROUP BY Taste_experience
ORDER BY 2 DESC;

-- Q11: Which cities do we need to focus more on?
SELECT City, COUNT(City), COUNT(CITY) / (SELECT COUNT(*) FROM respondents) * 100 AS Percentage FROM cities
LEFT JOIN respondents
ON respondents.City_ID = cities.City_ID
GROUP BY City
ORDER BY 2 DESC;

-- Q12: Where do respondents prefer to purchase energy drinks?
SELECT Purchase_location AS 'Preferred Purchase Location', COUNT(Purchase_location) AS 'Frequency',
COUNT(Purchase_location) / (SELECT COUNT(*) FROM respondents) * 100 AS Percentage FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

-- Q13: What are the typical consumption situations for energy drinks among respondents?
SELECT Typical_consumption_situations AS 'Typical Consumption Situation', COUNT(Typical_consumption_situations) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

-- Q14: What factors influence respondent's purchase decisions, such as price range and limited edition packaging?
SELECT Price_range AS 'Preferred Price Range', COUNT(Price_range) AS 'Frequency',
COUNT(Price_range) / (SELECT COUNT(*) FROM respondents) * 100 AS Percentage FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

SELECT Limited_edition_packaging AS 'Limited Edition (Y/N)', COUNT(Limited_edition_packaging) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

-- Q15: Which area of business should we focus more on our product development?
SELECT Reasons_for_choosing_brands 'Main Reason', COUNT(Reasons_for_choosing_brands) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY Reasons_for_choosing_brands
ORDER BY 2 DESC;

SELECT Improvements_desired 'Desired Improvements', COUNT(Improvements_desired) AS 'Frequency' FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
GROUP BY 1
ORDER BY 2 DESC;

-- Additional Questions

-- If you have not tried our energy drink, can you please state why?
SELECT Reasons_preventing_trying AS Reasons, COUNT(Reasons_preventing_trying) AS Frequency FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
WHERE Tried_before = 'No'
GROUP BY 1
ORDER BY 2 DESC;

-- What improvements would you like to see in our product?
SELECT Improvements_desired, COUNT(Improvements_Desired) AS Frequency,
COUNT(Improvements_desired) / (SELECT COUNT(*) FROM respondents) * 100 AS Percentage FROM survey_responses
INNER JOIN respondents
ON respondents.Respondent_ID = survey_responses.Respondent_ID
WHERE Tried_before = 'Yes'
GROUP BY 1
ORDER BY 2 DESC;
