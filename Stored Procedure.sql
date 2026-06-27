Stored Procedure

👉 Stored Procedure म्हणजे pre-written SQL logic
👉 ज्यामध्ये आपण INSERT / UPDATE / DELETE / SELECT करू शकतो

create procedure GetCustomerPolicies

@CustomerID INT
AS
Begin 
	Select *
		 from CustomerPolicy
		 where CustomerID=@CustomerID;
		 End;

		 EXEC GetCustomerPolicies 1;



💡 Features:

✔ Multiple SQL statements allowed
✔ DML operations (INSERT/UPDATE/DELETE) allowed
✔ Input parameters घेऊ शकतो
✔ Performance better (precompiled)