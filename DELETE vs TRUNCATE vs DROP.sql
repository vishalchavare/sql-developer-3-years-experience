DELETE vs TRUNCATE vs DROP
=================================================================================
🔴 1. DELETE (Row-level remove)
👉 Specific record delete करतो

Example:
DELETE FROM Customer WHERE CustomerID = 1;
========================================================================

⚡ 2. TRUNCATE (Full table fast empty)
👉 सगळा data delete होतो पण structure राहतो

Example:
TRUNCATE TABLE Customer;
=================================================================================

. 3.DROP (Complete remove)
👉 Table पूर्ण उडवतो (data + structure)

Example:
DROP TABLE Customer;
=================================================================================