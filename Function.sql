Function

👉 Function म्हणजे calculation / logic returning value
=============================================================================
🏦 Insurance Example
👉 Total premium calculate करणे

create function TotalPremium(@CustomerID INT)
returns decimal(10,2)
AS
begin 
		declare @Total decimal(10,2)

		select @Total = sum(Amount)
		from PremiumPayment pp
		join CustomerPolicy cp
    ON pp.CustomerPolicyID = cp.CustomerPolicyID
    WHERE cp.CustomerID = @CustomerID;

    RETURN @Total;
END;


SELECT dbo.TotalPremium(1);




💡 Features:

✔ Must return value
✔ SELECT मध्ये वापरू शकतो
✔ DML operations नाही (INSERT/UPDATE/DELETE नाही)
✔ Only calculation logic