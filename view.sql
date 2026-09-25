USE classicmodels;

-- =========================================
-- 1. TẠO VIEW customer_views
-- =========================================

DROP VIEW IF EXISTS customer_views;

CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;


-- =========================================
-- 2. XEM DỮ LIỆU TỪ VIEW
-- =========================================

SELECT *
FROM customer_views;


-- =========================================
-- 3. CẬP NHẬT VIEW customer_views
-- =========================================

CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber,
       customerName,
       contactFirstName,
       contactLastName,
       phone
FROM customers
WHERE city = 'Nantes';


-- =========================================
-- 4. XEM VIEW SAU KHI CẬP NHẬT
-- =========================================

SELECT *
FROM customer_views;


-- =========================================
-- 5. XÓA VIEW
-- =========================================

DROP VIEW customer_views;