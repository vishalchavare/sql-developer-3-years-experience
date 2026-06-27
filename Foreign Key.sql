CREATE TABLE Policy (
    PolicyID INT PRIMARY KEY
);

CREATE TABLE CustomerPolicy (
    CustomerPolicyID INT PRIMARY KEY,
    CustomerID INT,
    PolicyID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer1(CustomerID),
    FOREIGN KEY (PolicyID) REFERENCES Policy(PolicyID)
);

CREATE TABLE Customer1 (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100)
);


select *from CustomerPolicy

Foreign Key म्हणजे असा column जो दुसऱ्या table च्या Primary Key ला reference करतो
👉 तो tables मध्ये relationship (नातं) तयार करतो

🧠 Simple Meaning

👉 CustomerPolicy table सांगतो:
कोणत्या customer ने कोणती policy घेतली आहे

🏆 One Line Summary

👉 Foreign Key = “Link between two tables that maintains data consistency”