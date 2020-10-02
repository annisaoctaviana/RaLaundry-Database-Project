CREATE TABLE MsMaterial(
	materialID CHAR(5) PRIMARY KEY 
	CHECK(materialID LIKE 'MA[0-9][0-9][0-9]'),
	materialName VARCHAR(50),
	materialType VARCHAR(20),
	materialPrice INT,
	CONSTRAINT CheckmaterialType
	CHECK(materialType = 'Equipment' OR materialType ='Supplies')
)

SELECT * FROM MsMaterial


CREATE TABLE MsCustomer(
	customerID CHAR(5) PRIMARY KEY
	CHECK(customerID LIKE 'CU[0-9][0-9][0-9]'),
	customerName VARCHAR(50),
	customerAddress VARCHAR(50),
	customerGender VARCHAR(10),
	customerDOB DATE,
	CONSTRAINT CheckgenderCustomer
	CHECK(customerGender = 'Male' OR customerGender = 'Female'),
	CONSTRAINT CheckcustomerAddress 
	CHECK(LEN(CustomerAddress) > 10)
)
	
SELECT *FROM MsCustomer


UPDATE MsCustomer
SET CustomerID ='CU001'
WHERE CustomerID = 'CU010'

CREATE TABLE MsStaff(
	staffID CHAR(5) PRIMARY KEY
	CHECK(staffID LIKE 'ST[0-9][0-9][0-9]'),
	staffName VARCHAR(50),
	staffAddress VARCHAR(50),
	staffGender VARCHAR(10),
	staffSalary INT,
	CONSTRAINT CheckgenderStaff 
	CHECK(staffGender = 'Male' OR staffGender = 'Female'),
	CONSTRAINT CheckstaffSalary
	CHECK(staffSalary >=1500000 AND staffSalary <= 3000000),
)

SELECT * FROM MsStaff


ALTER TABLE MsStaff
WITH NOCHECK ADD CONSTRAINT CheckstaffAddress CHECK(LEN(staffAddress) > 10)

CREATE TABLE MsVendor(
	vendorID CHAR(5) PRIMARY KEY
	CHECK(vendorID LIKE 'VE[0-9][0-9][0-9]'),
	vendorName VARCHAR(50),
	vendorAddress VARCHAR(50),
	vendorPhoneNumber VARCHAR(50),
	CONSTRAINT CheckvendorAddress 
	CHECK(LEN(vendorAddress) > 10)
)

CREATE TABLE MsClothes(
	clothesID CHAR(5) PRIMARY KEY
	CHECK(clothesID LIKE 'CL[0-9][0-9][0-9]'),
	clothesName char(50),
	clothesType char(15)
	CHECK(clothesType = 'Cotton' OR clothesType = 'Viscose' OR clothesType = 'Polyester' OR clothesType ='Linen' OR clothesType ='Wool')
)

CREATE TABLE MsService(
	serviceID CHAR(5) PRIMARY KEY
	CHECK(serviceID LIKE'SR[0-9][0-9][0-9]'),
	staffID CHAR(5) FOREIGN KEY REFERENCES MsStaff,
	customerID CHAR(5) FOREIGN KEY REFERENCES MsCustomer,
	clothesID CHAR(5) FOREIGN KEY REFERENCES MsClothes,
	serviceDate DATE
	CHECK(YEAR(serviceDate) = YEAR(CURRENT_TIMESTAMP)),
	serviceType VARCHAR(25)
	CHECK(serviceType = 'Laundry Service' OR serviceType = 'Dry Cleaning Service' OR serviceType = 'Ironing Service'),
	servicePrice INT,
)


CREATE TABLE MsDetailService(
	serviceID CHAR(5) FOREIGN KEY REFERENCES MsService,
	clothesID CHAR(5) FOREIGN KEY REFERENCES MsClothes,
)

CREATE TABLE MsPurchaseTransaction(
	purchaseID CHAR(5) PRIMARY KEY
	CHECK(purchaseID LIKE 'PU[0-9][0-9][0-9]'),
	staffID CHAR(5) FOREIGN KEY REFERENCES MsStaff,
	vendorID CHAR(5) FOREIGN KEY REFERENCES MsVendor,
	materialID CHAR(5) FOREIGN KEY REFERENCES MsMaterial,
	purchaseDate DATE
	CHECK(YEAR(purchaseDate) = YEAR(CURRENT_TIMESTAMP)),
	quantity INT
	)

CREATE TABLE DetailPurchaseTransaction(
	purchaseID CHAR(5) FOREIGN KEY REFERENCES MsPurchaseTransaction,
	materialID CHAR(5) FOREIGN KEY REFERENCES MsMaterial,
)






