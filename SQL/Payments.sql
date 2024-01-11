CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    amount DECIMAL(10, 2),
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
    payment_method int(50),

);
CREATE TABLE PaymentMethods (
    Payment_Method_id INT PRIMARY KEY,
    Payment_Method_Description VARCHAR(50)
);
CREATE TABLE DebitPayment (
    Payment_id INT PRIMARY KEY,
    Payment_Method_id INT,
    payment_amount DECIMAL(18, 2)
);
CREATE TABLE CashPaymentDetails (
    cash_id INT PRIMARY KEY,
    payment_id INT,
    cash_amount DECIMAL(18, 2)
);
CREATE TABLE PaypalDetails (
    paypal_id INT PRIMARY KEY,
    payment_id INT,
    total_amount DECIMAL(18, 2)
);

ALTER TABLE `debitpayment` CHANGE `Payment_id` `debit_id` INT(11) NOT NULL, CHANGE `Payment_Method_id` `payment_id` INT(11) NULL DEFAULT NULL, CHANGE `payment_amount` `total_amount` DECIMAL(18,2) NULL DEFAULT NULL;
ALTER TABLE `cashpaymentdetails` CHANGE `cash_amount` `total_amount` DECIMAL(18,2) NULL DEFAULT NULL;
