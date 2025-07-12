INSERT INTO Customers VALUES
(1, 'Alice', 'Smith', 'New York'),
(2, 'Bob', 'Jones', 'Los Angeles'),
(3, 'Carol', 'Lee', 'Chicago');

INSERT INTO Products VALUES
(101, 'Widget', 'Gadgets', 10.00),
(102, 'Gizmo', 'Gadgets', 15.00),
(103, 'Thingamajig', 'Tools', 7.50);

INSERT INTO Orders VALUES
(1001, 1, '2025-01-10', 50.00),
(1002, 1, '2025-01-15', 30.00),
(1003, 2, '2025-02-05', 15.00);

INSERT INTO OrderItems VALUES
(1001, 101, 2),
(1001, 102, 3),
(1002, 103, 4),
(1003, 102, 1);
