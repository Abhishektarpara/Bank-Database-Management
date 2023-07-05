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
