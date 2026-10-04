CREATE TABLE FactCustomerPerformance (Date date, CustomerID varchar(10), Channel varchar(30), Segment varchar(30), Category varchar(50), Orders int, Revenue decimal(18,2), Cost decimal(18,2), TargetValue decimal(18,2));
CREATE INDEX IX_CustomerPerformance_Date ON FactCustomerPerformance(Date);
CREATE INDEX IX_CustomerPerformance_Customer ON FactCustomerPerformance(CustomerID);
