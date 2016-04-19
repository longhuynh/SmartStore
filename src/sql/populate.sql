INSERT INTO category(categoryName) VALUES ('Bags') ,('Jackets'), ('Accesories'),('Manufacters'),('Dresses'),('Jewelry'),('Shoes'),('Shirts');
INSERT INTO product (productId, Status, description, productApproval, productCondition, productName, productPath, unitPrice, unitsInStock, category_categoryId) VALUES
(1, 'locked', 'excellent condition ', 'approved', 'New', 'Laptop', 'resources/images/product1.png', '125.00', 1, 1),
(2, 'locked', 'good', 'approved', 'Old', 'Cloth', 'resources/images/product2.png', '25.00', 1, 2),
(3, 'locked', 'good condition', 'approved', 'Old', 'Car', 'resources/images/product3.png', '1556.00', 9, 1);
