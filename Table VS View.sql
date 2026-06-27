View vs Table (SQL)
----------------------------------------------------------------------------------------------------------

🧠 1. TABLE (Real Data Store)
----------------------------------------------------------------------------------------------------------
👉 Table म्हणजे physical data storage

✔ Data actually store होते
✔ Insert / Update / Delete possible
✔ Disk वर data save असतो

----------------------------------------------------------------------------------------------------------
🏦 Insurance Example
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100)
);

👉 इथे data permanently store होतो
----------------------------------------------------------------------------------------------------------
💡 Meaning:

👉 Table = actual database memory
----------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
👁️ 2. VIEW (Virtual Table)

👉 View म्हणजे saved SQL query (virtual table)
👉 data store होत नाही
----------------------------------------------------------------------------------------------------------
🏦 Insurance Example
CREATE VIEW ActivePolicies AS
SELECT *
FROM CustomerPolicy
WHERE EndDate > GETDATE();

SELECT * FROM ActivePolicies;

💡 Meaning:

👉 View = pre-written SELECT query result
----------------------------------------------------------------------------------------------------------


⚖️ Difference Table
Feature	                                Table	            View
Storage	                                Physical	        Virtual
Data	                                Stored	            Not stored
Speed	                                Fast	            Depends on query
DML	                                    Yes	                    Limited
Purpose                             	Data store	           Data representation