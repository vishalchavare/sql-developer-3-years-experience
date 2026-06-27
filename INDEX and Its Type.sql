🧠 What is Clustered Index?
👉 Clustered Index म्हणजे असा index जो table मधील data physically order (sorted) करून store करतो

✔ म्हणजे data disk वर sorted form मध्ये राहतो
✔ एकाच table ला only 1 clustered index असू शकतो

🏦 Insurance Example
Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100)
);
👉 इथे CustomerID वर automatically Clustered Index तयार होतो (SQL Server default)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
📊 How it works (Simple)

👉 Suppose data:

CustomerID	Name
3	Rahul
1	Vishal
2	Amit

👉 Clustered index लागू झाल्यावर:

CustomerID	Name
1	Vishal
2	Amit
3	Rahul

👉 Data physically sorted store होतो
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
⚡ Key Features

✔ Only 1 per table
✔ Data sorted order मध्ये store होतो
✔ Fast range queries (BETWEEN, ORDER BY)
✔ Primary Key default clustered index असतो (SQL Server)

===========================================================================================================
===========================================================================================================
Non-Clustered Index (SQL) – Practical + Interview Level

🧠 What is Non-Clustered Index?

👉 Non-Clustered Index म्हणजे असा index जो data physically sort करत नाही
👉 तो एक separate structure (lookup like map) तयार करतो जो original table कडे point करतो

_______________________________________________________________________________________________________
🏦 Simple Insurance Example
Customer Table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100)
);

👉 इथे:

CustomerID → Clustered Index (by default)
🔍 Now add Non-Clustered Index on Email
CREATE NONCLUSTERED INDEX IX_Customer_Email
ON Customer(Email);
⚡ How it works (Simple)

👉 Suppose query:

SELECT * FROM Customer WHERE Email = 'abc@gmail.com';
Without index:

❌ Full table scan (slow)

With Non-Clustered Index:

✔ First index search → then actual row fetch
✔ Faster lookup
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++==
🧠 Real Life Analogy

👉 Clustered Index = Book arranged alphabetically
👉 Non-Clustered Index = Book index page (page number reference)

⚖️ Clustered vs Non-Clustered
Feature	                            Clustered	              Non-Clustered
Data                        storage	Physically sorted	    Separate structure
Count	                    1 only	                         Multiple allowed
Speed	                    Range queries fast	               Exact match fast
Storage	                    No extra pointer	                Extra index space



