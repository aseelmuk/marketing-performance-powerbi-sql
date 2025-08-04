--Query 1: Categorize Products Based on Price Range

select *,case when price<50 then 'Low'
when price between 50 and 200 then 'Medium'
else 'High' end as price_category
from products


-- Query 2: Customer Details with Location Information

select c.CustomerID,c.CustomerName,c.Email,c.Gender,c.Age,g.Country,g.City
from customers c
left join geography g on c.GeographyID=g.GeographyID


--Query 3: Customer Reviews with Sentiment Categorization and removing blank spaces from ReviewText column

select ReviewID,CustomerID,ProductID,ReviewDate,Rating
,replace(reviewtext,'  ',' ') as ReviewText
,case when rating<3 then 'Negative'
when rating=3 then 'Neutral'
else 'Positive' end as SentimentCategory
from customer_reviews


--Query 4: Engagement Data Cleanup and Click/View Separation

select engagementid,ContentID,CampaignID,ProductID
,upper(replace(contenttype,'socialmedia','social media')) as contenttype
,likes
,left(ViewsClicksCombined,CHARINDEX('-',ViewsClicksCombined)-1) as views
,right(ViewsClicksCombined,len(viewsclickscombined)- CHARINDEX('-',ViewsClicksCombined)) as clicks
,format(convert(date,engagementdate),'dd.MM.yyyy') as engagementdate
from engagement_data
WHERE contenttype !=  'newsletter'


---Query 5: Customer Journey Data – Cleaned, Deduplicated & Duration Filled


select top 100
    JourneyID,  
    CustomerID,  
    ProductID, 
    VisitDate,  
    Stage,  
    Action,  
    COALESCE(Duration, avg_duration) AS Duration  
FROM 
    (
        -- Subquery to process and clean the data
        select 
            JourneyID,  
            CustomerID,  
            ProductID,  
            VisitDate, 
            upper(Stage) AS Stage,  -- Converts Stage values to uppercase for consistency in data analysis
            Action,  
            Duration, 
            avg(Duration) OVER (PARTITION BY VisitDate) AS avg_duration,  -- Calculates the average duration for each date, using only numeric values
            row_number() OVER (
                partition by CustomerID, ProductID, VisitDate, UPPER(Stage), Action  -- Groups by these columns to identify duplicate records
                ORDER BY JourneyID  
            ) AS row_num  -- Assigns a row number to each row within the partition to identify duplicates
        from  
            dbo.customer_journey  
    ) AS subquery  
WHERE 
    row_num = 1;