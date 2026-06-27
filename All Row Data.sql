INSERT INTO Customer1 (CustomerID, FullName)
VALUES 
(1, 'Vishal Chavare'),
(2, 'Amit Patil'),
(3, 'Rahul Sharma'),
(4, 'Sneha Deshmukh'),
(5, 'Pooja Kulkarni'),
(6, 'Karan Mehta'),
(7, 'Neha Joshi'),
(8, 'Rohit Pawar'),
(9, 'Priya Nair'),
(10, 'Suresh Yadav');


INSERT INTO Policy (PolicyID)
VALUES 
(101),
(102),
(103),
(104),
(105);


INSERT INTO CustomerPolicy (CustomerPolicyID, CustomerID, PolicyID)
VALUES 
(1, 1, 101),
(2, 1, 102),
(3, 2, 103),
(4, 3, 101),
(5, 4, 104),
(6, 5, 105),
(7, 6, 102),
(8, 7, 103),
(9, 8, 101),
(10, 9, 104);

CREATE TABLE PremiumPayment (
    PaymentID INT PRIMARY KEY,
    CustomerPolicyID INT,
    PaymentDate DATE,
    Amount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerPolicyID) REFERENCES CustomerPolicy(CustomerPolicyID)
);


INSERT INTO PremiumPayment (PaymentID, CustomerPolicyID, PaymentDate, Amount, Status)
VALUES 
(1, 1, '2026-01-10', 5000, 'Paid'),
(2, 2, '2026-01-15', 7000, 'Paid'),
(3, 3, '2026-02-01', 4500, 'Pending'),
(4, 4, '2026-02-10', 6000, 'Paid'),
(5, 5, '2026-02-20', 8000, 'Paid'),
(6, 6, '2026-03-01', 3000, 'Pending'),
(7, 7, '2026-03-10', 5500, 'Paid'),
(8, 8, '2026-03-15', 6500, 'Paid'),
(9, 9, '2026-04-01', 4000, 'Paid'),
(10, 10, '2026-04-10', 9000, 'Pending');


CREATE TABLE Claim (
    ClaimID INT PRIMARY KEY,
    CustomerPolicyID INT,
    ClaimDate DATE,
    ClaimAmount DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (CustomerPolicyID) REFERENCES CustomerPolicy(CustomerPolicyID)
);


INSERT INTO Claim (ClaimID, CustomerPolicyID, ClaimDate, ClaimAmount, Status)
VALUES 
(1, 3, '2026-02-15', 20000, 'Pending'),
(2, 5, '2026-03-05', 15000, 'Approved'),
(3, 7, '2026-03-20', 10000, 'Rejected'),
(4, 9, '2026-04-10', 25000, 'Pending'),
(5, 2, '2026-04-15', 30000, 'Approved');