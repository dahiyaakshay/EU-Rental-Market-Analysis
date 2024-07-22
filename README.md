<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>EU Rental Market Analysis</h1>

<p><strong>Brief Description:</strong><br>
This project provides an in-depth analysis of the European rental market using SQL. The dataset includes various aspects such as tenant profiles, rental properties, and rental prices, enabling a comprehensive understanding of the market dynamics.</p>

<h2>Table of Contents</h2>
<ol>
    <li><a href="#introduction">Introduction</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#sql-script-overview">SQL Script Overview</a></li>
    <li><a href="#dependencies">Dependencies</a></li>
</ol>

<h2 id="introduction">Introduction</h2>
<p>This project involves a detailed analysis of the rental market across different European countries. The analysis focuses on understanding tenant profiles, property characteristics, and rental prices, helping to identify trends and insights within the market.</p>

<h2 id="usage">Usage</h2>
<p><strong>Guidelines to use the SQL script:</strong></p>
<ol>
    <li>Open a SQL client (e.g., pgAdmin, DBeaver).</li>
    <li>Connect to your PostgreSQL database.</li>
    <li>Run the SQL script to create and populate the tables.</li>
    <li>Execute the queries within the script to perform the analysis.</li>
</ol>

<h2 id="sql-script-overview">SQL Script Overview</h2>
<p><strong>Summary of the SQL script structure and contents:</strong></p>

<h3>Total Lines</h3>
<ul>
    <li><strong>Total Lines of SQL Code:</strong> 353</li>
</ul>

<h3>Sample Lines</h3>
<pre><code>-- Create tenant profile table
CREATE TABLE tenant_profile (
    Gender VARCHAR(10),
    Age_Group VARCHAR(10),
    Education_Qualification VARCHAR(50),
    Marital_Status VARCHAR(20),
    Children VARCHAR(10),
    Monthly_Income INTEGER,
    Employment_Status VARCHAR(20),
    Reason_for_Renting VARCHAR(50)
);</code></pre>

<h3>Sections</h3>
<ol>
    <li><strong>Table Creation</strong>
        <ul>
            <li><code>tenant_profile</code>: Stores information about tenants.</li>
            <li><code>rental_properties</code>: Contains details about rental properties.</li>
            <li><code>rental_prices</code>: Holds data on rental prices for different properties.</li>
        </ul>
    </li>
    <li><strong>Data Insertion</strong>
        <ul>
            <li>Insert sample data into <code>tenant_profile</code>, <code>rental_properties</code>, and <code>rental_prices</code> tables.</li>
        </ul>
    </li>
    <li><strong>Queries and Analysis</strong>
        <ul>
            <li>Analyze tenant demographics.</li>
            <li>Examine property characteristics.</li>
            <li>Investigate rental price trends.</li>
        </ul>
    </li>
</ol>

<h2 id="dependencies">Dependencies</h2>
<p><strong>List of major dependencies for running the SQL script:</strong></p>
<ul>
    <li>PostgreSQL (or another compatible SQL database)</li>
    <li>SQL client (e.g., pgAdmin, DBeaver)</li>
</ul>

</body>
</html>
