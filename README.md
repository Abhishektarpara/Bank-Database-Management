# Bank-Database-Management

The Bank Database System project is aimed at developing a comprehensive and efficient database system for a bank. The system is designed to store and manage various aspects of a bank's operations, including customer accounts, transactions, employees, and other relevant information.

This project utilizes a relational database management system (RDBMS) to organize and store the data in a structured manner, ensuring data integrity and easy retrieval. The database is designed to support multiple branches of the bank and handle a large volume of data while maintaining high performance.

The database schema consists of several interconnected tables that capture different entities and their relationships within the bank. The tables include:

    Customers: This table stores information about the bank's customers, such as customer ID, name, contact details, and address.

    Accounts: This table maintains details of the various types of accounts offered by the bank, including account number, account type, opening date, and current balance. It also establishes relationships with the Customers table to link each account to its respective owner.

    Transactions: This table records all the transactions performed by the customers, such as deposits, withdrawals, transfers, and other financial activities. It includes information such as transaction ID, date, account number, transaction type, and transaction amount.

    Employees: This table stores data related to bank employees, including employee ID, name, position, contact details, and branch affiliation. It helps in managing employee information and assigning responsibilities.

    Branches: This table maintains information about the different branches of the bank, including branch ID, location, address, and contact details. It helps in tracking branch-specific data and managing operations at each branch.

    Loans: This table captures details of loan accounts, including loan ID, account number, loan type, loan amount, interest rate, and repayment schedule. It enables the bank to manage loan-related information and track repayment status.


## ER model

![ER_bank](https://github.com/Abhishektarpara/Bank-Database-Management/assets/121369602/66e77edf-192a-42dd-acff-8f370c657b3e)


Total 13 tables are created..

## Queries
1. Retrieve all customer details (first name, last name, email) who have a savings account with an account balance greater than 5000.
2. Get the total number of active accounts in the database.
3. List the customers who made a transaction of more than 1000 on a specific date.
4. Find the account numbers with the highest and lowest current balances.
5. Get the customer details who have a fixed deposit with a maturity date within the next 30 days.
6. Retrieve the details of customers who have a credit card with an outstanding balance greater than 500.
7. Get the total number of transactions of each transaction type.
8. List the customers who have accounts in multiple banks.
9. Find the average account balance for each account type.
10. Retrieve the customer details along with their branch information.
11. Retrieve the total balance for each customer along with their account type, sorted in descending order of the total balance.
12. Get the customer details who have the highest account balance for each account type.
13. Retrieve the customers who have made transactions with a specific bank, along with the total amount of transactions made by each customer.
14. Get the customer details who have not made any transactions.
15. Retrieve the customer details along with their account type, showing "Active" if the account status is 'Active' and "Inactive" otherwise.
16. Retrieve the customers who have at least two active accounts of different types.
17. Get the customers who have made transactions exceeding the average transaction amount, along with the total transaction count for each customer.
18. Retrieve the customers who have a loan amount greater than the average loan amount of all customers, along with the maximum loan amount.
19. Get the customers who have the same last name and display the total balance across all their accounts.
20. Retrieve the customers who have made a cash withdrawal transaction within the last 30 days, along with the count of such transactions.
21. Get the count of transactions for each day in a specific month.

## Conclusion
Aim of this mini project was to understand DBMS in practical to create tables and insert items and perform various operations on it.





