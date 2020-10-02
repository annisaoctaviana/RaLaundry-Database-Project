INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU026','ST002','VE005','MA001','2019/12/4',3)

INSERT INTO DetailPurchaseTransaction(purchaseID, materialID) 
VALUES
	('PU026','MA001')

INSERT INTO MsService(serviceID, staffID, customerID, clothesID, serviceDate, serviceType, servicePrice) 
VALUES
	('SR026','ST003','CU008','CL010','2019/12/20','Dry Cleaning Service',20000)

INSERT INTO MsDetailService(serviceID, clothesID) 
VALUES
	
	('SR026','CL003')