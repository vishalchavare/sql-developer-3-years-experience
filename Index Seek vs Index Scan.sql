📌 Index Seek vs Index Scan
===========================================================
🧠 Simple Definition
✅ Index Seek

Index Seek म्हणजे SQL Server exact location शोधून फक्त required rows वाचतो.

👉 जसं पुस्तकात index पाहून थेट page no. 125 वर जाणं.
------------------------------------------------------------------------------
❌ Index Scan

Index Scan म्हणजे SQL Server संपूर्ण index (किंवा मोठा भाग) scan करतो आणि मग data शोधतो.

👉 जसं पुस्तकाचं index न वापरता प्रत्येक page चाळत जाणं.
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
🏦 Insurance Example

Customer Table

Customer
-------------------------------
CustomerID   FullName   City
1            Vishal     Pune
2            Amit       Mumbai
3            Rahul      Pune
...
100000 rows

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
✅ Example 1: Index Seek

Assume CustomerID is Primary Key.

SELECT *
FROM Customer
WHERE CustomerID = 100;
..............................................................
SQL Server Thinking

Primary Key Index
        ↓
Find CustomerID = 100
        ↓
Return only that row

✔ Reads only 1 row

✔ Very Fast
-----------------------------------------------------------------------------------------------------
❌ Example 2: Index Scan

SELECT *
FROM Customer
WHERE FullName LIKE '%shal';

SQL Server can't directly jump because % is at the beginning.

It scans many index entries.

Row 1
Row 2
Row 3
Row 4
...
Row 100000

✔ Slower
----------------------------------------------------------------------------------
Another Example
Query
SELECT *
FROM Customer
WHERE City='Pune';

If City has no index

↓

Table Scan

If City has a Non-Clustered Index

↓

Index Seek (or sometimes Index Scan depending on how many rows match)

📊 Comparison
Feature	Index Seek	Index Scan
Reads	Required rows only	Many/all rows
Speed	Fast	Slower
Resource Usage	Low	High
Used When	Highly selective search	Many rows or no efficient seek possible
🎯 Real Insurance Example

Suppose company has 20 lakh customers.

Customer search
SELECT *
FROM Customer
WHERE CustomerID=250001;

✅ Index Seek

Milliseconds.

Premium Report
SELECT *
FROM PremiumPayment
WHERE PaymentDate>'2026-01-01';

Suppose 80% records satisfy condition.

SQL Server may choose

✅ Index Scan

Because seeking thousands of records individually is more expensive than scanning.