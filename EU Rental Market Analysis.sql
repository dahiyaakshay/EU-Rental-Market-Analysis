-- Create tenant profile table
CREATE TABLE tenant_profile (
    Gender VARCHAR(10),
    Age_Group VARCHAR(10),
    Education_Qualification VARCHAR(50),
    Marital_Status VARCHAR(20),
    Children VARCHAR(10),
    Monthly_Income INTEGER,
    Employment_Status VARCHAR(20),
    Reason_for_Renting VARCHAR(50),
    Preferred_Property_Type VARCHAR(20),
    Duration_of_Stay_in_Year INTEGER,
    Country VARCHAR(50)
);

-- Create property rental management table
CREATE TABLE property_rental_management (
    Country VARCHAR(50),
    Population_millions DECIMAL,
    Number_of_Households_millions DECIMAL,
    Homeownership_Rate VARCHAR(10),
    Average_Montly_Rent_Price VARCHAR(20),
    Property_Rental_Vacancy_Rate VARCHAR(10),
    Internet_Penetration_Rate VARCHAR(10),
    Number_of_Rental_Properties_Available_thousands INTEGER,
    Number_of_Property_Management_Companies INTEGER,
    Average_Property_Management_Fees VARCHAR(10),
    Urbanization_Rate VARCHAR(10),
    Median_Household_Income VARCHAR(20),
    Real_Estate_Market_Growth_Rate VARCHAR(10)
);


-- Tenant Profile Analysis

-- Question: What is the demographic distribution of tenants in terms of gender, age, and marital status?
-- Description: This query counts the number of tenants grouped by their gender, age group, and marital status.
SELECT 
    Gender, 
    Age_Group, 
    Marital_Status, 
    COUNT(*) AS count
FROM 
    tenant_profile
GROUP BY 
    Gender, Age_Group, Marital_Status
ORDER BY 
    count DESC;


-- Question: What are the most common education qualifications among tenants?
-- Description: This query counts the number of tenants grouped by their education qualifications.
SELECT 
    Education_Qualification, 
    COUNT(*) AS count
FROM 
    tenant_profile
GROUP BY 
    Education_Qualification
ORDER BY 
    count DESC;


-- Question: What are the employment statuses of tenants?
-- Description: This query counts the number of tenants grouped by their employment status.
SELECT 
    Employment_Status, 
    COUNT(*) AS count
FROM 
    tenant_profile
GROUP BY 
    Employment_Status
ORDER BY 
    count DESC;


-- Question: What is the average monthly income of tenants by age group and employment status?
-- Description: This query calculates the average monthly income of tenants grouped by their age group and employment status.
SELECT 
    Age_Group, 
    Employment_Status, 
    AVG(Monthly_Income) AS avg_income
FROM 
    tenant_profile
GROUP BY 
    Age_Group, Employment_Status
ORDER BY 
    avg_income DESC;


-- Question: What are the primary reasons tenants choose to rent properties?
-- Description: This query counts the number of tenants grouped by their reasons for renting.
SELECT 
    Reason_for_Renting, 
    COUNT(*) AS count
FROM 
    tenant_profile
GROUP BY 
    Reason_for_Renting
ORDER BY 
    count DESC;


-- Question: Which property types are most preferred by tenants?
-- Description: This query counts the number of tenants grouped by their preferred property types.
SELECT 
    Preferred_Property_Type, 
    COUNT(*) AS count
FROM 
    tenant_profile
GROUP BY 
    Preferred_Property_Type
ORDER BY 
    count DESC;


-- Question: What is the average duration of stay for tenants across different countries?
-- Description: This query calculates the average duration of stay for tenants grouped by country.
SELECT 
    Country, 
    AVG(Duration_of_Stay_in_Year) AS avg_duration
FROM 
    tenant_profile
GROUP BY 
    Country
ORDER BY 
    avg_duration DESC;


-- Question: How does the preference for property types vary by country?
-- Description: This query counts the number of tenants grouped by their preferred property types and country.
SELECT 
    Country, 
    Preferred_Property_Type, 
    COUNT(*) AS count
FROM 
    tenant_profile
GROUP BY 
    Country, Preferred_Property_Type
ORDER BY 
    count DESC;


-- Question: What percentage of tenants have children, and how does this influence their rental choices?
-- Description: This query calculates the percentage of tenants who have children and counts the number of tenants with children grouped by their preferred property types.
-- Percentage of tenants with children
SELECT 
    (COUNT(*) FILTER (WHERE Children = 'Yes') * 100.0 / COUNT(*)) AS percentage_with_children
FROM 
    tenant_profile;

-- Influence of children on rental choices
SELECT 
    Preferred_Property_Type, 
    COUNT(*) AS count
FROM 
    tenant_profile
WHERE 
    Children = 'Yes'
GROUP BY 
    Preferred_Property_Type
ORDER BY 
    count DESC;


-- Question: What are the correlations between monthly income and preferred property types?
-- Description: This query calculates the average monthly income of tenants grouped by their preferred property types.
SELECT 
    Preferred_Property_Type, 
    AVG(Monthly_Income) AS avg_income
FROM 
    tenant_profile
GROUP BY 
    Preferred_Property_Type
ORDER BY 
    avg_income DESC;


-- Property Rental Management Analysis

-- Question: What is the distribution of rental properties available across different EU countries?
-- Description: This query counts the number of rental properties available in each country.
SELECT 
    Country, 
    Number_of_Rental_Properties_Available_thousands AS rental_properties_available
FROM 
    property_rental_management
ORDER BY 
    rental_properties_available DESC;


-- Question: What are the average monthly rent prices in different countries and how do they compare?
-- Description: This query retrieves the average monthly rent prices for each country.
SELECT 
    Country, 
    Average_Montly_Rent_Price
FROM 
    property_rental_management
ORDER BY 
    Average_Montly_Rent_Price DESC;


-- Question: How do homeownership rates vary across countries, and what is their impact on the rental market?
-- Description: This query retrieves the homeownership rates for each country.
SELECT 
    Country, 
    Homeownership_Rate
FROM 
    property_rental_management
ORDER BY 
    Homeownership_Rate DESC;


-- Question: What are the vacancy rates for rental properties in different regions?
-- Description: This query retrieves the vacancy rates for rental properties in each country.
SELECT 
    Country, 
    Property_Rental_Vacancy_Rate
FROM 
    property_rental_management
ORDER BY 
    Property_Rental_Vacancy_Rate DESC;


-- Question: How does internet penetration rate correlate with rental demand and property availability?
-- Description: This query retrieves the internet penetration rates and the number of rental properties available for each country.
SELECT 
    Country, 
    Internet_Penetration_Rate, 
    Number_of_Rental_Properties_Available_thousands AS rental_properties_available
FROM 
    property_rental_management
ORDER BY 
    Internet_Penetration_Rate DESC;


-- Question: How many property management companies are there in each country, and what are their average fees?
-- Description: This query retrieves the number of property management companies and their average fees for each country.
SELECT 
    Country, 
    Number_of_Property_Management_Companies AS property_management_companies, 
    Average_Property_Management_Fees AS average_fees
FROM 
    property_rental_management
ORDER BY 
    property_management_companies DESC;


-- Question: What is the urbanization rate in each country and how does it influence rental market dynamics?
-- Description: This query retrieves the urbanization rates for each country.
SELECT 
    Country, 
    Urbanization_Rate
FROM 
    property_rental_management
ORDER BY 
    Urbanization_Rate DESC;


-- Question: What are the median household incomes in different countries, and how do they relate to rental prices?
-- Description: This query retrieves the median household incomes and the average monthly rent prices for each country.
SELECT 
    Country, 
    Median_Household_Income, 
    Average_Montly_Rent_Price
FROM 
    property_rental_management
ORDER BY 
    Median_Household_Income DESC;


-- Question: What is the real estate market growth rate in each country, and what are the implications for future investments?
-- Description: This query retrieves the real estate market growth rates for each country.
SELECT 
    Country, 
    Real_Estate_Market_Growth_Rate
FROM 
    property_rental_management
ORDER BY 
    Real_Estate_Market_Growth_Rate DESC;


-- Question: Which countries offer the best opportunities for property management services based on current market indicators?
-- Description: This query retrieves key indicators for property management services, such as the number of property management companies, average fees, and real estate market growth rates, for each country.
SELECT 
    Country, 
    Number_of_Property_Management_Companies AS property_management_companies, 
    Average_Property_Management_Fees AS average_fees, 
    Real_Estate_Market_Growth_Rate
FROM 
    property_rental_management
ORDER BY 
    Real_Estate_Market_Growth_Rate DESC, 
    property_management_companies DESC;


-- Additional Analytical Perspectives
-- Question: How does the tenant profile differ between high-rent and low-rent countries?
-- Description: This query compares tenant profiles (age group, gender, employment status) between countries with high and low average monthly rent prices.
WITH Rent_Tiers AS (
    SELECT 
        Country, 
        Average_Montly_Rent_Price,
        NTILE(2) OVER (ORDER BY CAST(REPLACE(REPLACE(Average_Montly_Rent_Price, '€', ''), ',', '') AS DECIMAL)) AS rent_tier
    FROM 
        property_rental_management
)
SELECT 
    tp.Country, 
    rt.rent_tier,
    tp.Age_Group, 
    tp.Gender, 
    tp.Employment_Status, 
    COUNT(*) AS count
FROM 
    tenant_profile tp
JOIN 
    Rent_Tiers rt ON tp.Country = rt.Country
GROUP BY 
    tp.Country, rt.rent_tier, tp.Age_Group, tp.Gender, tp.Employment_Status
ORDER BY 
    rt.rent_tier, count DESC;


-- Question: How does the presence of children affect the choice of rental properties and duration of stay?
-- Description: This query analyzes the impact of children on property type preference and duration of stay.
SELECT 
    tp.Children, 
    tp.Preferred_Property_Type, 
    AVG(tp.Duration_of_Stay_in_Year) AS avg_duration
FROM 
    tenant_profile tp
GROUP BY 
    tp.Children, tp.Preferred_Property_Type
ORDER BY 
    tp.Children DESC, avg_duration DESC;


-- Question: What are the key factors driving rental prices in different regions?
-- Description: This query examines various factors like urbanization rate, median income, and vacancy rates.
SELECT 
    prm.Country, 
    prm.Average_Montly_Rent_Price, 
    prm.Urbanization_Rate, 
    prm.Median_Household_Income, 
    prm.Property_Rental_Vacancy_Rate
FROM 
    property_rental_management prm
ORDER BY 
    prm.Average_Montly_Rent_Price DESC;


-- End --