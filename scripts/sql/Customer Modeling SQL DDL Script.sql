CREATE TABLE `customers` (
  `customer_id` int PRIMARY KEY,
  `first_name` varchar(50),
  `last_name` varchar(50),
  `gender` varchar(10),
  `age` int,
  `dob` date,
  `email` varchar(100),
  `phone_number` varchar(20),
  `is_churned` boolean,
  `days_since_last_purchase` int,
  `tenure` int,
  `discount_used` boolean,
  `last_purchase_date` date,
  `purchase_frequency` int,
  `avg_purchase_value` float
);

CREATE TABLE `dim_calendar` (
  `date_key` date PRIMARY KEY,
  `day_of_week` varchar(10),
  `month` varchar(10),
  `year` int,
  `quarter` varchar(5),
  `is_holiday` boolean
);

CREATE TABLE `dim_location` (
  `location_id` int PRIMARY KEY,
  `shopping_mall` varchar(50),
  `city` varchar(50),
  `province_state` varchar(50),
  `country` varchar(50)
);

CREATE TABLE `dim_payments` (
  `payment_id` int,
  `payment_method` varchar(50),
  `card_type` varchar(20),
  `amount_paid` float,
  `currency` varchar(10),
  `subscription_status` varchar(10),
  PRIMARY KEY (`payment_id`, `subscription_status`)
);

CREATE TABLE `dim_transactions` (
  `invoice_no` int PRIMARY KEY,
  `category` varchar(50),
  `quantity` int,
  `price` float,
  `shopping_mall` varchar(50),
  `invoice_date` date
);

CREATE TABLE `fact_customer_activity` (
  `customer_id` int,
  `invoice_no` int,
  `transaction_date` date,
  `location_id` int,
  `payment_method` varchar(20),
  `subscription_status` varchar(10),
  `category` varchar(50),
  `quantity` int,
  `unit_price` float,
  `total_price` float,
  `discount_applied` float,
  `final_price` float,
  `shopping_mall` varchar(50),
  `city` varchar(50),
  `province_state` varchar(50),
  `country` varchar(50),
  `days_since_last_purchase` int,
  `purchase_frequency` int,
  `avg_purchase_value` float,
  `total_spent` float,
  `discount_used` boolean,
  `is_churned` boolean,
  `tenure` int,
  `last_interaction_date` date
);

ALTER TABLE `fact_customer_activity` ADD FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

ALTER TABLE `fact_customer_activity` ADD FOREIGN KEY (`invoice_no`) REFERENCES `dim_transactions` (`invoice_no`);

ALTER TABLE `fact_customer_activity` ADD FOREIGN KEY (`transaction_date`) REFERENCES `dim_calendar` (`date_key`);

ALTER TABLE `fact_customer_activity` ADD FOREIGN KEY (`location_id`) REFERENCES `dim_location` (`location_id`);

ALTER TABLE `fact_customer_activity` ADD FOREIGN KEY (`payment_method`) REFERENCES `dim_payments` (`payment_method`);
