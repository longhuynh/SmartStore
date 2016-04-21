INSERT INTO smartstore.category(categoryName) VALUES ('Bed') ,('Kichen'), ('Accesories'),('Manufacters');

INSERT INTO smartstore.product (productId, Status, description, productApproval, productCondition, productName, productPath, unitPrice, unitsInStock, category_categoryId) VALUES
(1, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'New', 'Brown Wood Chair', '/resources/images/product1.png', '500.00', 10, 2),
(2, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'New', 'Wood Bed', '/resources/images/product2.png', '25.00', 10, 1),
(3, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'New', 'Cone Chair', '/resources/images/product3.png', '80.00', 10, 3),
(4, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'Old', 'Twin Beds', '/resources/images/product4.png', '100.00', 10, 1),
(5, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'New', 'Wood Chair', '/resources/images/product5.png', '500.00', 10, 3),
(6, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'New', 'Armchair', '/resources/images/product6.png', '125.00', 10, 3),
(7, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'New', 'Brown Chair', '/resources/images/product7.png', '80.00', 10, 4),
(8, NULL, 'Receive a $20 credit for any purchase of $20 or more on Shutterfly.com with qualifying product purchase shipped and sold by Amazon.com.', 'approved', 'Old', 'White  Chair', '/resources/images/product8.png', '210.00', 10, 4);

INSERT INTO smartstore.creditcard (creditCardId, creditCardNo, creditCardType, creditLimit, expMonth, expYear, nameOnCard, securityCode) VALUES
(1, '1472583691478523', 'Visa', '50000.00', 1, 2017, 'Admin', 123),
(2, '1234567890123456', 'Visa', '50000.00', 1, 2017, 'Customer', 123),
(3, '3456789012345678', 'Visa', '50000.00', 1, 2017, 'Vendor', 123);

INSERT INTO smartstore.address (addressId, state, street, zipcode) VALUES
(1, 'IA', 'N 4th Street', '52557'),
(2, 'IA', 'Mountain View', '52557'),
(3, 'OH', 'Main Street', '52557');

INSERT INTO smartstore.users_credntial (USERNAME, enabled, PASSWORD) VALUES
('admin', 1, '$2a$10$amTA2WxQyu1zJ2fOcJAOHu0lJZ.AkR.X91WtK3cJolAQtgVLEgfeG'),
('customer', 1, '$2a$10$gDMWYaUnwIvuAgJ1HOrlKuumQ4iJ.eyyCP92xoi7ecrpvUq5iL47S'),
('vendor', 1, '$2a$10$C6OjnqRvqtjjdP5vUZMy1OEFuaBO9/bza4w8EHNxOHpUmHO2Wr.1S');

INSERT INTO smartstore.admin (id, email, firstName, lastName, password, phone, address_addressId, USERNAME, creditCard_creditCardId) VALUES
(1, 'admin@gmail.com', 'Admin', 'MaxShop', '$2a$10$W.V9TekBPdypQS5f49mCXeVwoouRcH8f/ntpomDQCd3cWeBmPaNvm', '0123456789', 1, 'Admin', 1);

INSERT INTO smartstore.customer (id, email, firstName, lastName, password, phone, address_addressId, USERNAME, creditCard_creditCardId) VALUES
(1, 'customer@gmail.com', 'Customer', 'MaxShop', '$2a$10$0CiC7C41wbKlsxHwHUd57uCWwwe84o6KJr1XBchisuASixhPiZG1W', '1112223333', 2, 'Customer', 2);

INSERT INTO smartstore.vendor (id, email, firstName, lastName, password, phone, status, address_addressId, USERNAME, creditCard_creditCardId, businessContact_businessContactId) VALUES
(1, 'vendor@gmail.com', 'Vendor', 'MaxShop', '$2a$10$Z5Yh127AMoTxQrnTnt9i5.nojQD/BW8Chdken.GqpFYgBwUSWY0ee', '2223334444', 0, 3, 'vendor', 3, NULL);

INSERT INTO smartstore.authorities (ID, AUTHORITY, username) VALUES
(1, 'ROLE_ADMIN', 'admin'),
(2, 'ROLE_CUSTOMER', 'customer'),
(3, 'ROLE_VENDOR', 'vendor');

INSERT INTO smartstore.vendor_product (Vendor_id, products_productId) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8);
