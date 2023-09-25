--1. Create an agent phone list
SELECT AgentFirstName + ' ' + AgentLastName AS [Agent Name], AgentPhone
FROM Agents
ORDER BY [Agent Name];

--2. Create a list of customers by city
SELECT CustFirstName + ' ' + CustLastName AS [Customer Name], CustCity
FROM Customers
ORDER BY CustCity, [Customer Name];

--3. Create a list of when an agent received their first review (180 days after being hired)
SELECT AgentFirstName + ' ' + AgentLastName AS [Agent Name],
       DATEADD(DAY, 180, AgentDateHired) AS [First Review Date]
FROM Agents
ORDER BY [First Review Date];

--4. Create a report of the net price per contract
SELECT 
    E.EngagementKey,
    E.EngContractPrice,
    A.AgentCommissionRate,
    CAST(ROUND(E.EngContractPrice - (E.EngContractPrice * A.AgentCommissionRate), 2) AS DECIMAL(10,2)) AS [Net Price Per Contract]
FROM 
    Engagements E
JOIN 
    Agents A ON E.AgentKey = A.AgentKey
ORDER BY 
    E.EngagementKey;
--5. Create a report of all engagements that last more than 3 days
SELECT 
    EngagementKey,
    DATEDIFF(DAY, EngStartDate, EngEndDate) AS [Duration In Days]
FROM 
    Engagements
WHERE 
    DATEDIFF(DAY, EngStartDate, EngEndDate) > 3
ORDER BY 
    EngStartDate, EngEndDate;

--6. Create a report of all October engagements that occurred in 2022
SELECT 
    EngagementKey,
    EngStartDate,
    EngEndDate
FROM 
    Engagements
WHERE 
    YEAR(EngStartDate) = 2022 AND MONTH(EngStartDate) = 10
ORDER BY 
    EngStartDate;
--7. Create a report of all October engagements that occurred between noon and 5 PM
SELECT 
    EngagementKey,
    EngStartDate,
    EngEndDate,
    LEFT(CONVERT(VARCHAR, EngStartTime, 108), 5) AS [Start Time],
    LEFT(CONVERT(VARCHAR, EngEndTime, 108), 5) AS [End Time]
FROM 
    Engagements
WHERE 
    YEAR(EngStartDate) = 2022 AND MONTH(EngStartDate) = 10
    AND EngStartTime >= '12:00' AND EngStartTime <= '17:00'
ORDER BY 
    EngStartDate, EngStartTime;

--8.. Create a list of all customers and the groups they have booked
SELECT 
    C.CustFirstName + ' ' + C.CustLastName AS CustomerName,
    G.GroupStageName AS GroupBooked
FROM Customers C
JOIN Engagements E ON C.CustomerKey = E.CustomerKey
JOIN Groups G ON E.GroupKey = G.GroupKey
ORDER BY CustomerName, GroupBooked;

--9. Create a list of all agents that have no contracts
SELECT 
    A.AgentFirstName + ' ' + A.AgentLastName AS [Agent Name]
FROM Agents A
LEFT JOIN Engagements E ON A.AgentKey = E.AgentKey
WHERE E.AgentKey IS NULL
ORDER BY [Agent Name];

--10. Create a list of all customers with no bookings
SELECT 
    C.CustFirstName + ' ' + C.CustLastName AS [Customer Name]
FROM Customers C
LEFT JOIN Engagements E ON C.CustomerKey = E.CustomerKey
WHERE E.CustomerKey IS NULL
ORDER BY [Customer Name];

--11. Create a list of each customer's last booking
SELECT 
    C.CustFirstName + ' ' + C.CustLastName AS [Customer Name],
    MAX(E.EngStartDate) AS [Last Booking Date]
FROM Customers C
JOIN Engagements E ON C.CustomerKey = E.CustomerKey
GROUP BY C.CustFirstName, C.CustLastName
ORDER BY [Last Booking Date] DESC;

--12. Create a list of customers who like Country or Country Rock
SELECT DISTINCT
    C.CustFirstName + ' ' + C.CustLastName AS [Customer Name]
FROM Customers C
JOIN CustomerPreference CP ON C.CustomerKey = CP.CustomerKey
JOIN MusicStyle MS ON CP.StyleKey = MS.StyleKey
WHERE MS.StyleName IN ('Country', 'Country Rock')
ORDER BY [Customer Name];

--13. Create a report of the number of engagements each group has performed
SELECT 
    G.GroupStageName AS [Stage Name],
    COUNT(E.EngagementKey) AS [Number Of Engagements]
FROM Groups G
LEFT JOIN Engagements E ON G.GroupKey = E.GroupKey
GROUP BY G.GroupStageName
ORDER BY [Number Of Engagements] DESC, [Stage Name];

--14. Create a report of the average agent salary
SELECT 
    CAST(AVG(AgentSalary) AS DECIMAL(10, 2)) AS [Average Agent Salary]
FROM Agents;

--15. Show our earliest October engagement in 2022
SELECT 
    MIN(EngStartDate) AS [Earliest October Engagement]
FROM Engagements
WHERE 
    YEAR(EngStartDate) = 2022 
    AND MONTH(EngStartDate) = 10;

--16. Show the value of our October 2022 bookings
SELECT 
    SUM(EngContractPrice) AS [Total Value Of October 2022 Bookings]
FROM Engagements
WHERE 
    YEAR(EngStartDate) = 2022 
    AND MONTH(EngStartDate) = 10;

--17. Create a report of agent sales and commissions
SELECT 
    A.AgentFirstName + ' ' + A.AgentLastName AS [Agent Name],
    SUM(E.EngContractPrice) AS TotalSales,
    CAST(SUM(E.EngContractPrice) * A.AgentCommissionRate AS DECIMAL(10, 2)) AS TotalCommission
FROM Agents A
LEFT JOIN Engagements E ON A.AgentKey = E.AgentKey
GROUP BY 
    A.AgentFirstName, 
    A.AgentLastName, 
    A.AgentCommissionRate;
--18. Show only those agents who have a commission greater than $1000
SELECT 
    A.AgentFirstName + ' ' + A.AgentLastName AS [Agent Name],
    --SUM(E.EngContractPrice) AS TotalSales,
    CAST(SUM(E.EngContractPrice) * A.AgentCommissionRate AS DECIMAL(10, 2)) AS [Total Commission]
FROM Agents A
LEFT JOIN Engagements E ON A.AgentKey = E.AgentKey
GROUP BY 
    A.AgentFirstName, 
    A.AgentLastName, 
    A.AgentCommissionRate
HAVING CAST(SUM(E.EngContractPrice) * A.AgentCommissionRate AS DECIMAL(10, 2)) > 1000;

