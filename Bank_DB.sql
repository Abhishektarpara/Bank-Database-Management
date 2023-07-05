create schema `Bank`;
USE `Bank`;
CREATE TABLE account (
  account_no int not null,
  cust_id varchar(20) not null,
  account_type varchar(20),
  curr_bal int,
  account_status varchar(20),
  primary key (account_no, cust_id),
  INDEX idx_cust_id (cust_id)
);

INSERT INTO account (account_no, cust_id, account_type, curr_bal, account_status)
VALUES
    (100001, 'CUST-001', 'Savings', 5000, 'Active'),
    (100002, 'CUST-002', 'Checking', 10000, 'Active'),
    (100003, 'CUST-003', 'Savings', 7500, 'Active'),
    (100004, 'CUST-004', 'Savings', 2000, 'Inactive'),
    (100005, 'CUST-005', 'Checking', 3000, 'Active'),
    (100006, 'CUST-006', 'Savings', 15000, 'Active'),
    (100007, 'CUST-007', 'Savings', 8000, 'Active'),
    (100008, 'CUST-008', 'Checking', 12000, 'Active'),
    (100009, 'CUST-009', 'Savings', 9000, 'Active'),
    (100010, 'CUST-010', 'Checking', 5000, 'Inactive'),
    (100011, 'CUST-011', 'Savings', 6000, 'Active'),
    (100012, 'CUST-012', 'Checking', 7000, 'Active'),
    (100013, 'CUST-013', 'Savings', 4000, 'Active'),
    (100014, 'CUST-014', 'Checking', 2000, 'Active'),
    (100015, 'CUST-015', 'Savings', 10000, 'Active'),
    (100016, 'CUST-016', 'Checking', 8000, 'Active'),
    (100017, 'CUST-017', 'Savings', 9000, 'Active'),
    (100018, 'CUST-018', 'Checking', 6000, 'Inactive'),
    (100019, 'CUST-019', 'Savings', 7000, 'Active'),
    (100020, 'CUST-020', 'Checking', 3000, 'Active');


CREATE TABLE customer (
  cust_id varchar(20),
  fname varchar(20),
  lname varchar(20),
  dob date,
  address varchar(40),
  contact bigint,
  email varchar(30),
  password varchar(100), -- Add the password field
  created_at datetime,
  foreign key(cust_id) references account(cust_id)
);


INSERT INTO customer (cust_id, fname, lname, dob, address, contact, email, password, created_at)
VALUES
    ('CUST-001', 'John', 'Doe', '1990-05-15', '123 Main St', 1234567890, 'john.doe@example.com', 'password1', NOW()),
    ('CUST-002', 'Jane', 'Smith', '1985-11-30', '456 Elm St', 9876543210, 'jane.smith@example.com', 'password2', NOW()),
    ('CUST-003', 'Michael', 'Johnson', '1978-08-20', '789 Oak St', 4561237890, 'michael.johnson@example.com', 'password3', NOW()),
    ('CUST-004', 'Emily', 'Davis', '1995-02-10', '321 Pine St', 7894561230, 'emily.davis@example.com', 'password4', NOW()),
    ('CUST-005', 'David', 'Wilson', '1982-07-25', '567 Maple St', 6547893210, 'david.wilson@example.com', 'password5', NOW()),
    ('CUST-006', 'Sarah', 'Anderson', '1993-04-05', '890 Walnut St', 3219876540, 'sarah.anderson@example.com', 'password6', NOW()),
    ('CUST-007', 'Christopher', 'Martin', '1989-09-18', '234 Cedar St', 9876543211, 'christopher.martin@example.com', 'password7', NOW()),
    ('CUST-008', 'Jessica', 'Thompson', '1984-06-12', '567 Birch St', 6543219870, 'jessica.thompson@example.com', 'password8', NOW()),
    ('CUST-009', 'Daniel', 'Lee', '1992-03-27', '789 Pineapple St', 3217896540, 'daniel.lee@example.com', 'password9', NOW()),
    ('CUST-010', 'Olivia', 'Hall', '1997-11-08', '432 Orange St', 7893216540, 'olivia.hall@example.com', 'password10', NOW()),
    ('CUST-011', 'Robert', 'Wilson', '1987-04-15', '876 Oak St', 1234509876, 'robert.wilson@example.com', 'password11', NOW()),
    ('CUST-012', 'Samantha', 'Taylor', '1991-08-22', '543 Elm St', 9876012345, 'samantha.taylor@example.com', 'password12', NOW()),
    ('CUST-013', 'William', 'Johnson', '1994-12-03', '789 Pine St', 4567890123, 'william.johnson@example.com', 'password13', NOW()),
    ('CUST-014', 'Sophia', 'Brown', '1983-06-10', '234 Maple St', 7890123456, 'sophia.brown@example.com', 'password14', NOW()),
    ('CUST-015', 'Joseph', 'Anderson', '1999-02-28', '567 Oak St', 6543210987, 'joseph.anderson@example.com', 'password15', NOW()),
    ('CUST-016', 'Oliver', 'Smith', '1993-09-17', '890 Elm St', 3210987654, 'oliver.smith@example.com', 'password16', NOW()),
    ('CUST-017', 'Mia', 'Clark', '1996-05-06', '123 Pine St', 9012345678, 'mia.clark@example.com', 'password17', NOW()),
    ('CUST-018', 'Ethan', 'Harris', '1990-11-24', '456 Maple St', 5678901234, 'ethan.harris@example.com', 'password18', NOW()),
    ('CUST-019', 'Charlotte', 'Taylor', '1988-03-12', '789 Elm St', 2345678901, 'charlotte.taylor@example.com', 'password19', NOW()),
    ('CUST-020', 'Alexander', 'Wilson', '1995-07-29', '432 Oak St', 8901234567, 'alexander.wilson@example.com', 'password20', NOW());


CREATE TABLE transactions (
  transaction_id varchar(20) PRIMARY KEY,
  account_no int,
  from_account_no int,
  to_account_no int,
  to_bank_name varchar(50),
  transaction_type varchar(20),
  amount decimal(10, 2),
  transaction_date date,
  FOREIGN KEY (account_no) REFERENCES account(account_no),
  FOREIGN KEY (from_account_no) REFERENCES account(account_no)
);

INSERT INTO transactions (transaction_id, account_no, from_account_no, to_account_no, to_bank_name, transaction_type, amount, transaction_date)
VALUES
  ('TRX-001', 100001, 100002, 100003, 'ABC Bank', 'transfer', 1000.00, '2023-01-01'),
  ('TRX-002', 100002, 100004, 100005, 'XYZ Bank', 'transfer', 500.00, '2023-01-02'),
  ('TRX-003', 100003, 100001, 100006, 'DEF Bank', 'transfer', 1500.00, '2023-01-03'),
  ('TRX-004', 100004, 100007, 100008, 'GHI Bank', 'transfer', 2000.00, '2023-01-04'),
  ('TRX-005', 100005, 100009, 100010, 'JKL Bank', 'transfer', 750.00, '2023-01-05'),
  ('TRX-006', 100006, 100003, 100011, 'MNO Bank', 'transfer', 3000.00, '2023-01-06'),
  ('TRX-007', 100007, 100012, 100013, 'PQR Bank', 'transfer', 1000.00, '2023-01-07'),
  ('TRX-008', 100008, 100014, 100015, 'STU Bank', 'transfer', 1500.00, '2023-01-08'),
  ('TRX-009', 100009, 100016, 100017, 'VWX Bank', 'transfer', 2000.00, '2023-01-09'),
  ('TRX-010', 100010, 100018, 100019, 'YZ Bank', 'transfer', 500.00, '2023-01-10'),
  ('TRX-011', 100011, 100001, 100012, 'ABC Bank', 'transfer', 1000.00, '2023-01-11'),
  ('TRX-012', 100012, 100002, 100013, 'XYZ Bank', 'transfer', 750.00, '2023-01-12'),
  ('TRX-013', 100013, 100003, 100014, 'DEF Bank', 'transfer', 3000.00, '2023-01-13'),
  ('TRX-014', 100014, 100004, 100015, 'GHI Bank', 'transfer', 2000.00, '2023-01-14'),
  ('TRX-015', 100015, 100005, 100016, 'JKL Bank', 'transfer', 1500.00, '2023-01-15'),
  ('TRX-016', 100016, 100006, 100017, 'MNO Bank', 'transfer', 1000.00, '2023-01-16'),
  ('TRX-017', 100017, 100007, 100018, 'PQR Bank', 'transfer', 500.00, '2023-01-17'),
  ('TRX-018', 100018, 100008, 100019, 'STU Bank', 'transfer', 2000.00, '2023-01-18'),
  ('TRX-019', 100019, 100009, 100020, 'VWX Bank', 'transfer', 750.00, '2023-01-19'),
  ('TRX-020', 100020, 100010, 100011, 'YZ Bank', 'transfer', 1500.00, '2023-01-20');

CREATE TABLE beneficiaries (
  beneficiary_id INT PRIMARY KEY,
  account_no INT,
  beneficiary_name VARCHAR(50),
  FOREIGN KEY (account_no) REFERENCES account (account_no)
);

INSERT INTO beneficiaries (beneficiary_id, account_no, beneficiary_name) VALUES
  (1, 100001, 'John Smith'),
  (2, 100002, 'Jane Doe'),
  (3, 100003, 'Michael Johnson'),
  (4, 100004, 'Emily Davis'),
  (5, 100005, 'David Wilson'),
  (6, 100006, 'Sarah Anderson'),
  (7, 100007, 'Christopher Martin'),
  (8, 100008, 'Jessica Thompson'),
  (9, 100009, 'Daniel Lee'),
  (10, 100010, 'Olivia Hall');

CREATE TABLE loans (
  loan_id INT PRIMARY KEY,
  customer_id varchar(20),
  account_no INT,
  loan_amount DECIMAL(10, 2),
  interest_rate DECIMAL(5, 2),
  loan_duration INT,
  loan_status VARCHAR(20),
  FOREIGN KEY (customer_id) REFERENCES customer (cust_id),
  FOREIGN KEY (account_no) REFERENCES account (account_no)
);
INSERT INTO loans (loan_id, customer_id, account_no, loan_amount, interest_rate, loan_duration, loan_status) VALUES
(1, 'CUST-001', 100001, 5000, 5.5, 12, 'Active'),
(2, 'CUST-002', 100002, 10000, 6.2, 24, 'Active'),
(3, 'CUST-003', 100003, 7500, 4.8, 18, 'Active'),
(4, 'CUST-004', 100004, 2000, 7.0, 6, 'Inactive'),
(5, 'CUST-005', 100005, 3000, 6.5, 9, 'Active'),
(6, 'CUST-006', 100006, 15000, 6.8, 36, 'Active'),
(7, 'CUST-007', 100007, 8000, 5.9, 12, 'Active'),
(8, 'CUST-008', 100008, 12000, 6.4, 24, 'Active'),
(9, 'CUST-009', 100009, 9000, 4.5, 18, 'Active'),
(10, 'CUST-010', 100010, 5000, 7.2, 6, 'Inactive');

CREATE TABLE cards (
  card_id INT PRIMARY KEY,
  customer_id VARCHAR(20),
  card_number BIGINT,
  card_type VARCHAR(20),
  card_expiry_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customer (cust_id)
);
CREATE INDEX idx_card_number ON cards (card_number);
INSERT INTO cards (card_id, customer_id, card_number, card_type, card_expiry_date) VALUES
  (1, 'CUST-001', 1234567890123456, 'visa', '2025-08-01'),
  (2, 'CUST-002', 2345678901234567, 'platinum', '2024-12-01'),
  (3, 'CUST-003', 3456789012345678, 'visa', '2023-06-01'),
  (4, 'CUST-004', 4567890123456789, 'platinum', '2026-03-01'),
  (5, 'CUST-005', 5678901234567890, 'visa', '2025-10-01'),
  (6, 'CUST-006', 6789012345678901, 'platinum', '2023-12-01'),
  (7, 'CUST-007', 7890123456789012, 'visa', '2024-09-01'),
  (8, 'CUST-008', 8901234567890123, 'platinum', '2026-07-01'),
  (9, 'CUST-009', 9012345678901234, 'visa', '2023-04-01'),
  (10, 'CUST-010', 0123456789012345, 'platinum', '2025-11-01');
  
  CREATE TABLE atm_transactions (
  atm_transaction_id VARCHAR(20) PRIMARY KEY,
  customer_id VARCHAR(20),
  card_number bigint,
  transaction_type VARCHAR(50),
  transaction_date DATE,
  transaction_time TIME,
  amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customer (cust_id),
  foreign key (card_number) references cards(card_number)
);
INSERT INTO atm_transactions (atm_transaction_id, customer_id, card_number, transaction_type, transaction_date, transaction_time, amount)
VALUES
  ('ATM-001', 'CUST-001', 1234567890123456, 'cash withdrawal', '2021-01-01', '10:30:00', 100.00),
  ('ATM-002', 'CUST-002', 2345678901234567, 'balance inquiry', '2021-01-02', '14:45:00', 0.00),
  ('ATM-003', 'CUST-003', 3456789012345678, 'cash withdrawal', '2021-01-03', '09:15:00', 200.00),
  ('ATM-004', 'CUST-004', 4567890123456789, 'cash withdrawal', '2021-01-04', '16:20:00', 50.00),
  ('ATM-005', 'CUST-005', 5678901234567890, 'balance inquiry', '2021-01-05', '11:10:00', 0.00);

ALTER TABLE customer
ADD branch_id INT,
ADD FOREIGN KEY (branch_id) REFERENCES branches(branch_id);



select * from customer;
CREATE TABLE branches (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(50),
  location VARCHAR(100),
  contact_number VARCHAR(20),
  manager_name VARCHAR(50)
);
INSERT INTO branches (branch_id, branch_name, location, contact_number, manager_name) VALUES
  (1, 'Branch 1', 'Location 1', '1234567890', 'Manager 1'),
  (2, 'Branch 2', 'Location 2', '2345678901', 'Manager 2'),
  (3, 'Branch 3', 'Location 3', '3456789012', 'Manager 3'),
  (4, 'Branch 4', 'Location 4', '4567890123', 'Manager 4'),
  (5, 'Branch 5', 'Location 5', '5678901234', 'Manager 5'),
  (6, 'Branch 6', 'Location 6', '6789012345', 'Manager 6'),
  (7, 'Branch 7', 'Location 7', '7890123456', 'Manager 7'),
  (8, 'Branch 8', 'Location 8', '8901234567', 'Manager 8'),
  (9, 'Branch 9', 'Location 9', '9012345678', 'Manager 9'),
  (10, 'Branch 10', 'Location 10', '0123456789', 'Manager 10');

UPDATE customer SET branch_id = FLOOR(RAND() * 10) + 1 WHERE 1 = 1;

CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  branch_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  position VARCHAR(50),
  contact_number VARCHAR(20),
  email VARCHAR(50),
  salary DECIMAL(10, 2),
  FOREIGN KEY (branch_id) REFERENCES branches (branch_id)
);

INSERT INTO employees (employee_id, branch_id, first_name, last_name, position, contact_number, email, salary) VALUES
  (1, 1, 'John', 'Doe', 'Manager', '1234567890', 'john.doe@example.com', 5000.00),
  (2, 1, 'Jane', 'Smith', 'Assistant Manager', '2345678901', 'jane.smith@example.com', 4000.00),
  (3, 2, 'Michael', 'Johnson', 'Sales Executive', '3456789012', 'michael.johnson@example.com', 3500.00),
  (4, 2, 'Emily', 'Davis', 'Customer Service Representative', '4567890123', 'emily.davis@example.com', 3000.00),
  (5, 3, 'David', 'Wilson', 'Accountant', '5678901234', 'david.wilson@example.com', 4500.00),
  (6, 3, 'Sarah', 'Anderson', 'Marketing Coordinator', '6789012345', 'sarah.anderson@example.com', 3200.00),
  (7, 4, 'Christopher', 'Martin', 'IT Specialist', '7890123456', 'christopher.martin@example.com', 4000.00),
  (8, 4, 'Jessica', 'Thompson', 'HR Manager', '8901234567', 'jessica.thompson@example.com', 4800.00),
  (9, 5, 'Daniel', 'Lee', 'Operations Supervisor', '9012345678', 'daniel.lee@example.com', 4200.00),
  (10, 5, 'Olivia', 'Hall', 'Sales Associate', '0123456789', 'olivia.hall@example.com', 3500.00);

CREATE TABLE audit_logs (
  log_id INT PRIMARY KEY,
  user_id VARCHAR(20),
  action VARCHAR(50),
  timestamp TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES customer(cust_id) ON DELETE CASCADE
);
INSERT INTO audit_logs (log_id, user_id, action, timestamp) VALUES
  (1, 'CUST-001', 'login', NOW()),
  (2, 'CUST-002', 'logout', NOW()),
  (3, 'CUST-003', 'data modification', NOW()),
  (4, 'CUST-004', 'login', NOW()),
  (5, 'CUST-005', 'logout', NOW()),
  (6, 'CUST-006', 'data modification', NOW()),
  (7, 'CUST-007', 'login', NOW()),
  (8, 'CUST-008', 'logout', NOW()),
  (9, 'CUST-009', 'data modification', NOW()),
  (10, 'CUST-010', 'login', NOW());
  
  CREATE TABLE fixed_deposits (
  deposit_id INT PRIMARY KEY,
  customer_id VARCHAR(20),
  deposit_amount DECIMAL(10, 2),
  interest_rate DECIMAL(5, 2),
  deposit_duration INT,
  maturity_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customer (cust_id)
);
INSERT INTO fixed_deposits (deposit_id, customer_id, deposit_amount, interest_rate, deposit_duration, maturity_date) VALUES
  (1, 'CUST-001', 10000.00, 2.5, 12, '2022-07-05'),
  (2, 'CUST-002', 5000.00, 3.0, 6, '2021-12-31'),
  (3, 'CUST-003', 20000.00, 2.75, 24, '2025-02-15'),
  (4, 'CUST-004', 15000.00, 2.25, 18, '2024-09-30'),
  (5, 'CUST-005', 100000.00, 2.0, 36, '2027-06-30'),
  (6, 'CUST-006', 25000.00, 3.25, 12, '2023-07-05'),
  (7, 'CUST-007', 8000.00, 2.75, 6, '2023-12-31'),
  (8, 'CUST-008', 50000.00, 2.0, 24, '2025-02-15'),
  (9, 'CUST-009', 30000.00, 2.5, 18, '2024-09-30'),
  (10, 'CUST-010', 200000.00, 3.5, 36, '2027-06-30');
  
  CREATE TABLE credit_cards (
  credit_card_id INT PRIMARY KEY,
  customer_id VARCHAR(20),
  card_number BIGINT,
  card_limit DECIMAL(10, 2),
  outstanding_balance DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES customer(cust_id)
);
INSERT INTO credit_cards (credit_card_id, customer_id, card_number, card_limit, outstanding_balance) VALUES
  (1, 'CUST-001', 1234567890123456, 5000.00, 2500.00),
  (2, 'CUST-002', 2345678901234567, 10000.00, 500.00),
  (3, 'CUST-003', 3456789012345678, 20000.00, 0.00),
  (4, 'CUST-004', 4567890123456789, 15000.00, 7500.00),
  (5, 'CUST-005', 5678901234567890, 50000.00, 10000.00),
  (6, 'CUST-006', 6789012345678901, 1000.00, 200.00),
  (7, 'CUST-007', 7890123456789012, 3000.00, 1000.00),
  (8, 'CUST-008', 8901234567890123, 25000.00, 15000.00),
  (9, 'CUST-009', 9012345678901234, 2000.00, 500.00),
  (10, 'CUST-010', 0123456789012345, 40000.00, 0.00);

CREATE TABLE kyc_documents (
  document_id INT PRIMARY KEY,
  customer_id VARCHAR(20),
  document_type VARCHAR(50),
  document_number VARCHAR(13),
  expiry_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customer (cust_id)
);
INSERT INTO kyc_documents (document_id, customer_id, document_type, document_number, expiry_date) VALUES
  (1, 'CUST-001', 'aadhar card', '1234567890123', '2021-12-31'),
  (2, 'CUST-002', 'PAN card', 'ABCD1234EFGH', '2022-10-15'),
  (3, 'CUST-003', 'Driving license', 'DL-1234567890', '2023-06-30'),
  (4, 'CUST-004', 'aadhar card', '9876543210987', '2022-09-30'),
  (5, 'CUST-005', 'PAN card', 'WXYZ5678LMNO', '2021-11-30'),
  (6, 'CUST-006', 'Driving license', 'DL-0987654321', '2023-08-15'),
  (7, 'CUST-007', 'aadhar card', '4567890123456', '2022-10-31'),
  (8, 'CUST-008', 'PAN card', 'UVWX5678QRST', '2024-12-15'),
  (9, 'CUST-009', 'Driving license', 'DL-7654321098', '2023-09-30'),
  (10, 'CUST-010', 'aadhar card', '6543210987654', '202-11-30');

-- 		Retrieve all customer details (first name, last name, email) who have a savings account with an account balance greater than 5000.
SELECT c.fname, c.lname, c.email
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
WHERE a.account_type = 'Savings' AND a.curr_bal > 5000;

--     Get the total number of active accounts in the database.
SELECT COUNT(*) AS total_active_accounts
FROM account
WHERE account_status = 'Active';

--     List the customers who made a transaction of more than 1000 on a specific date.
SELECT c.fname, c.lname, c.email
FROM customer c
INNER JOIN transactions t ON c.cust_id = t.account_no
WHERE t.transaction_date = '2023-01-01' AND t.amount > 1000;

--    Find the account numbers with the highest and lowest current balances.
SELECT account_no, curr_bal
FROM account
WHERE curr_bal = (SELECT MAX(curr_bal) FROM account)
   OR curr_bal = (SELECT MIN(curr_bal) FROM account);

--     Get the customer details who have a fixed deposit with a maturity date within the next 30 days.
SELECT c.fname, c.lname, c.email
FROM customer c
INNER JOIN fixed_deposits fd ON c.cust_id = fd.customer_id
WHERE fd.maturity_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 30 DAY);

--     Retrieve the details of customers who have a credit card with an outstanding balance greater than 500.
SELECT c.fname, c.lname, c.email
FROM customer c
INNER JOIN credit_cards cc ON c.cust_id = cc.customer_id
WHERE cc.outstanding_balance > 500;

--     Get the total number of transactions of each transaction type.
SELECT transaction_type, COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_type;

--     List the customers who have accounts in multiple banks.
SELECT c.fname, c.lname, c.email
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
GROUP BY c.cust_id
HAVING COUNT(DISTINCT a.account_no) > 1;

--     Find the average account balance for each account type.
SELECT account_type, AVG(curr_bal) AS average_balance
FROM account
GROUP BY account_type;

--     Retrieve the customer details along with their branch information.
SELECT c.fname, c.lname, c.email, b.branch_name, b.location
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
INNER JOIN branches b ON a.branch_id = b.branch_id;

--     Retrieve the total balance for each customer along with their account type, sorted in descending order of the total balance.
SELECT c.fname, c.lname, a.account_type, SUM(a.curr_bal) AS total_balance
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
GROUP BY c.fname, c.lname, a.account_type
ORDER BY total_balance DESC;

--     Get the customer details who have the highest account balance for each account type.
SELECT c.fname, c.lname, a.account_type, a.curr_bal
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
WHERE (a.account_type, a.curr_bal) IN (
    SELECT account_type, MAX(curr_bal)
    FROM account
    GROUP BY account_type
);

--     Retrieve the customers who have made transactions with a specific bank, along with the total amount of transactions made by each customer.
SELECT c.fname, c.lname, c.email, SUM(t.amount) AS total_transaction_amount
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
INNER JOIN transactions t ON a.account_no = t.account_no
WHERE t.to_bank_name = 'ABC Bank'
GROUP BY c.fname, c.lname, c.email;

--     Get the customer details who have not made any transactions.
SELECT c.fname, c.lname, c.email
FROM customer c
LEFT JOIN account a ON c.cust_id = a.cust_id
LEFT JOIN transactions t ON a.account_no = t.account_no
WHERE t.transaction_id IS NULL;

--     Retrieve the customer details along with their account type, showing "Active" if the account status is 'Active' and "Inactive" otherwise.
SELECT c.fname, c.lname, a.account_type,
    IF(a.account_status = 'Active', 'Active', 'Inactive') AS account_status
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id;

--     Retrieve the customers who have at least two active accounts of different types.
SELECT c.fname, c.lname, COUNT(DISTINCT a.account_type) AS num_account_types
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
WHERE a.account_status = 'Active'
GROUP BY c.fname, c.lname
HAVING COUNT(DISTINCT a.account_type) >= 2;

--     Get the customers who have made transactions exceeding the average transaction amount, along with the total transaction count for each customer.
SELECT c.fname, c.lname, COUNT(t.transaction_id) AS total_transactions
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
INNER JOIN transactions t ON a.account_no = t.account_no
WHERE t.amount > (SELECT AVG(amount) FROM transactions)
GROUP BY c.fname, c.lname;

--     Retrieve the customers who have a loan amount greater than the average loan amount of all customers, along with the maximum loan amount.
SELECT c.fname, c.lname, l.loan_amount, (SELECT MAX(loan_amount) FROM loans) AS max_loan_amount
FROM customer c
INNER JOIN loans l ON c.cust_id = l.customer_id
WHERE l.loan_amount > (SELECT AVG(loan_amount) FROM loans);

--     Get the customers who have the same last name and display the total balance across all their accounts.
SELECT c1.fname, c1.lname, SUM(a.curr_bal) AS total_balance
FROM customer c1
INNER JOIN customer c2 ON c1.lname = c2.lname AND c1.cust_id <> c2.cust_id
INNER JOIN account a ON c1.cust_id = a.cust_id
GROUP BY c1.fname, c1.lname;

--     Retrieve the customers who have made a cash withdrawal transaction within the last 30 days, along with the count of such transactions.
SELECT c.fname, c.lname, COUNT(t.transaction_id) AS withdrawal_count
FROM customer c
INNER JOIN account a ON c.cust_id = a.cust_id
INNER JOIN transactions t ON a.account_no = t.account_no
WHERE t.transaction_type = 'cash withdrawal' AND t.transaction_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY c.fname, c.lname;

--     Retrieve all transactions that occurred within a specific date range:
SELECT *
FROM transactions
WHERE transaction_date BETWEEN '2021-01-01' AND '2021-12-31';

--     Get the count of transactions for each day in a specific month:
SELECT DATE(transaction_date) AS transaction_day, COUNT(*) AS transaction_count
FROM transactions
WHERE MONTH(transaction_date) = 6 AND YEAR(transaction_date) = 2021
GROUP BY DATE(transaction_date);

-- set threshold for salart of employee of bank 
SELECT employee_id, first_name, last_name, salary,
       CASE
           WHEN salary > 5000 THEN 'Above Threshold'
           ELSE 'Below Threshold'
       END AS salary_status
FROM employees;



