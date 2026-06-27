🧠 What is Denormalization?

👉 Denormalization म्हणजे normalization च्या उलट process
👉 यात आपण intentional duplicate data ठेवतो for performance + fast reporting



⚖️ Normalization vs Denormalization
Feature					Normalization					Denormalization
Data duplication		❌ No								✔ Yes
Performance (read)		Slow								Fast
Data integrity				High							Medium
Use case				OLTP (transactions)					OLAP (reports)

🚀 Real Company Use (VERY IMPORTANT)
💼 Where Denormalization is used:
1. 📊 Power BI / Reporting systems
Daily dashboards
KPI reports
2. 🏦 Banking / Insurance analytics
Claim trends
Premium analysis
3. ⚡ Data Warehouses (DW)
Snowflake / Star schema
OLAP systems