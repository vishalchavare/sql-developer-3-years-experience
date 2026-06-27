📌 What is Normalization?

👉 Normalization म्हणजे database design process ज्यात आपण data organize करतो जेणेकरून:
duplication (duplicate data) कमी होईल
data consistency वाढेल
storage efficient बनेल

🏦 Insurance Example (Without Normalization ❌)
❌ Bad Table Design
CustomerPolicy
----------------------------------------
CustomerID | Name   | PolicyName | Premium
1          | Vishal | Health     | 5000
1          | Vishal | Life       | 8000

👉 Problem:
Name repeat होतंय
Policy details repeat होत आहेत
data waste + inconsistency


Normalization Levels
📦 1NF (First Normal Form)
📌 Rule:

👉 प्रत्येक column मध्ये atomic (single) value असावी

❌ Wrong:
Customer	Phones
Vishal	987, 876
✅ Correct:
Customer	Phone
Vishal	987
Vishal	876
🧠 Insurance meaning:

👉 एक column मध्ये multiple values नसाव्यात

📦 2NF (Second Normal Form)
📌 Rule:

👉 1NF + Partial dependency नसावी

❌ Problem example:
CustomerPolicy(CustomerID, CustomerName, PolicyID, PolicyName)

👉 इथे:

CustomerName → CustomerID वर depend आहे
PolicyName → PolicyID वर depend आहे

❌ duplicate dependency

✅ Fix (split tables):
Customer Table
Customer(CustomerID, CustomerName)
Policy Table
Policy(PolicyID, PolicyName)
Mapping Table
CustomerPolicy(CustomerID, PolicyID)
📦 3NF (Third Normal Form)
📌 Rule:

👉 2NF + transitive dependency नाही

❌ Wrong:
Customer(CustomerID, Name, City, Pincode)

👉 City → Pincode depend आहे
❌ indirect dependency

✅ Correct:
Customer Table
Customer(CustomerID, Name, City)
City Table
City(City, Pincode)
🧠 Simple Summary
Normal Form	Goal
1NF	No multiple values
2NF	No partial dependency
3NF	No indirect dependency


💡 Real Life Meaning

👉 Normalization = data clean + structured + no duplication
👉 Like “clean Excel sheet design for big company system”