--INSERT MATERIAL

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA001','Ferritic','Supplies',5000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA002','Rubber','Supplies',1000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA003','Solder','Equipment',150000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA004','Hammer','Equipment',70000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA005','Linen','Supplies',80000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA006','Wool','Supplies',60000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA007','Sticker','Supplies',15000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA008','Sewing Machine','Equipment',1500000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA009','Threads','Supplies',25000)

INSERT INTO MsMaterial(materialID,materialName,materialType,materialPrice) 
VALUES('MA010','Iron','Equipment',250000)

UPDATE MsMaterial
SET materialName = 'Detergent' WHERE materialID IN ('MA001')

UPDATE MsMaterial
SET materialName = 'Perfume A' WHERE materialID IN ('MA002')

UPDATE MsMaterial
SET materialName = 'IRON B' WHERE materialID IN ('MA003')

UPDATE MsMaterial
SET materialName = 'BASKET B' WHERE materialID IN ('MA004')

UPDATE MsMaterial
SET materialName = 'Perfume B' WHERE materialID IN ('MA005')

UPDATE MsMaterial
SET materialName = 'Whitener' WHERE materialID IN ('MA006')

UPDATE MsMaterial
SET materialName = 'Softener' WHERE materialID IN ('MA007')

UPDATE MsMaterial
SET materialName = 'Washing Machine B' WHERE materialID IN ('MA008')

UPDATE MsMaterial
SET materialName = 'Perfume C' WHERE materialID IN ('MA009')

UPDATE MsMaterial
SET materialName = 'Clothes Dryer' WHERE materialID IN ('MA010')


--insert MsCustomer

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU001','Budiman Seti','Kuningan Street No.8','Male','19891211')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU002','Setiawan Jaya','Sudirman Street No.3','Male','19921211')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU003','Steffany Tanja','Kalimati Street No.413','Female','19910820')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU004','Elen Hehe','Busan Street No.32','Female','19980423')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU005','Geraldy Ongko','Ampera Street No.212','Male','19780313')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU006','Benyamin Mulia','Pluit Street No.432','Male','19810214')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU007','Cakra Dustra','Muara Karang Street No.137','Male','19861203')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU008','Bambang Lad','Citra Street No.97','Male','19871005')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU009','Teddy Orlando','Sunter Garden Street No.17','Male','196714')

INSERT INTO MsCustomer(customerID,customerName,customerAddress,customerGender,customerDOB) 
VALUES('CU010','Klarisa Nugroho','Pantai Indah Kapuk Street No.317','Female','19750318')

UPDATE MsVendor
SET vendorName = 'PT. ' + vendorName WHERE vendorID IN ('VE008','VE005','VE004')

--insert MsStaff

SELECT * FROM MsStaff

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST001','Jeklin Harala','Kebon Jeruk Street no 140','Female',2000000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST002','Budi Gunawan','Pademangan Street no 40','Male',2200000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST003','Andrew Liman','Sunter Street no 30','Male',2700000)

UPDATE MsStaff
SET staffName = 'Andrew' WHERE staffID IN ('ST003')

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST004','Kurniawan Ongky','Angke Street no 20','Male',2400000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST005','Angelia Ananda','Pangandaran Street no 21','Female',2450000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST006','Queenelia Samba','Gunung sahari Street no 24','Female',2450000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST007','Bambang Sunib','Kemanggisan Street no 26','Male',2900000)

UPDATE MsStaff
SET staffName = 'Sunib' WHERE staffID IN ('ST007')

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST008','Juan Kurniawan','Slipi Raya Street no 217','Male',2650000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST009','Julia Sanulia','Tomang Raya Street no 23','Female',1900000)

INSERT INTO MsStaff(staffId,staffName,staffAddress,staffGender,StaffSalary) 
VALUES('ST010','Hendra Gunawan','Panjang Street no 11','Male',1700000)

--insert MsVendor

INSERT INTO MsVendor
VALUES
	('VE001' , 'Pelita Harapan', 'Flamboyan Street no 2', '081289890909'),
	('VE002', 'Sinar Mulya', 'Tanjung Raya Street C4', '02145456776'  ),
	('VE003', 'Bintang Aura', 'Bulan Bintang Street no 13', '087735455443'),
	('VE004', 'Satu Nusa Utama', 'Ravva Belong Street no 1', '087888991234'),
	('VE005', 'Pelangi Mitra', 'Kota Bambu Street', '085213465780'),
	('VE006', 'Cosmospolitan Mandiri', 'Metrojaya Street no 2', '02103456789'),
	('VE007', 'Anugrah Permata', 'Gunung Sahara Street no 3', '087878981234'),
	('VE008', 'Bangun Bahtera', 'Mega Kuningan Street 137', '087725525225'),
	('VE009', 'Sentosa Sejahtera', 'Rasuna Said Street no 97', '02129668879'),
	('VE010', 'Catur Makmur Dirgantara', 'Jatinegara Street no 21', '081897877878')

UPDATE MsVendor
SET vendorPhoneNumber = '081245456776' WHERE vendorID IN ('VE002')
UPDATE MsVendor
SET vendorPhoneNumber = '081203456789' WHERE vendorID IN ('VE006')
UPDATE MsVendor
SET vendorPhoneNumber = '081229668879' WHERE vendorID IN ('VE009')

UPDATE MsVendor
SET vendorName = 'PT. ' + vendorName WHERE vendorID IN ('VE008','VE005','VE004')

--insert MsPurchaseTransaction

INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU001','ST010','VE008','MA003','2019/5/8',1)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU002','ST007','VE008','MA001','2019/6/21',7)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU003','ST008','VE005','MA003','2019/1/7',6)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU004','ST008','VE004','MA007','2019/6/11',2)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU005','ST005','VE009','MA007','2019/5/1',10)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU006','ST002','VE002','MA007','2019/9/2',2)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU007','ST010','VE006','MA006','2019/6/30',5)
INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU008','ST007','VE001','MA002','2019/7/4',6)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU009','ST008','VE001','MA009','2019/5/14',8)

	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU010','ST004','VE009','MA009','2019/3/12',4)

	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU011','ST008','VE010','MA004','2019/6/11',7)

	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU012','ST007','VE009','MA001','2019/10/24',9)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU013','ST006','VE004','MA009','2019/7/20',6)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU014','ST009','VE010','MA001','2019/9/6',4)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU015','ST003','VE008','MA009','2019/4/11',5)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU016','ST002','VE006','MA008','2019/11/8',8)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU017','ST006','VE008','MA002','2019/3/30',10)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU018','ST004','VE002','MA009','2019/1/1',8)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU019','ST005','VE002','MA009','2019/3/21',7)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU020','ST002','VE003','MA001','2019/3/14',7)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU021','ST009','VE005','MA005','2019/4/19',8)

	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU022','ST001','VE001','MA010','2019/4/20',3)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU023','ST002','VE001','MA003','2019/2/4',2)

	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU024','ST005','VE005','MA008','2019/6/2',3)
	INSERT INTO MsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU025','ST010','VE006','MA001','2019/8/23',3)
--insert MsDetailPurchaseTransaction

INSERT INTO DetailPurchaseTransaction(purchaseID, materialID) 
VALUES
	('PU001','MA003'),
	('PU002','MA001'),
	('PU003','MA003'),
	('PU004','MA007'),
	('PU005','MA007'),
	('PU006','MA007'),
	('PU007','MA006'),
	('PU008','MA002'),
	('PU009','MA009'),
	('PU010','MA009'),
	('PU011','MA004'),
	('PU012','MA001'),
	('PU013','MA009'),
	('PU014','MA001'),
	('PU015','MA009'),
	('PU016','MA008'),
	('PU017','MA002'),
	('PU018','MA009'),
	('PU019','MA009'),
	('PU020','MA001'),
	('PU021','MA005'),
	('PU022','MA010'),
	('PU023','MA003'),
	('PU024','MA008'),
	('PU025','MA001')

--insert MsService

 INSERT INTO MsService(serviceID, staffID, customerID, clothesID, serviceDate, serviceType, servicePrice) 
VALUES
	('SR001','ST001','CU001','CL005','2019/5/7','Laundry Service',50000),
	('SR002','ST002','CU002','CL006','2019/5/11','Laundry Service',50000),
	('SR003','ST003','CU001','CL009','2019/3/14','Dry Cleaning Service',20000),
	('SR004','ST004','CU001','CL008','2019/2/9','Ironing Service',40000),
	('SR005','ST005','CU002','CL004','2019/6/10','Dry Cleaning Service',20000),
	('SR006','ST006','CU003','CL006','2019/11/5','Laundry Service',50000),
	('SR007','ST007','CU002','CL010','2019/2/1','Ironing Service',40000),
	('SR008','ST008','CU003','CL009','2019/12/21','Dry Cleaning Service',20000),
	('SR009','ST009','CU004','CL003','2019/4/1','Laundry Service',50000),
	('SR010','ST010','CU003','CL005','2019/6/4','Ironing Service',40000),
	('SR011','ST001','CU004','CL005','2019/7/17','Ironing Service',40000),
	('SR012','ST002','CU004','CL002','2019/7/29','Dry Cleaning Service',20000),
	('SR013','ST003','CU005','CL005','2019/3/30','Dry Cleaning Service',20000),
	('SR014','ST004','CU005','CL005','2019/4/15','Laundry Service',50000),
	('SR015','ST005','CU006','CL008','2019/8/2','Laundry Service',50000),
	('SR016','ST006','CU005','CL010','2019/8/18','Ironing Service',40000),
	('SR017','ST007','CU006','CL010','2019/2/13','Dry Cleaning Service',20000),
	('SR018','ST008','CU007','CL003','2019/1/21','Dry Cleaning Service',20000),
	('SR019','ST009','CU006','CL008','2019/9/10','Ironing Service',40000),
	('SR020','ST010','CU007','CL007','2019/10/6','Laundry Service',50000),
	('SR021','ST001','CU008','CL007','2019/6/22','Dry Cleaning Service',20000),
	('SR022','ST002','CU008','CL002','2019/3/31','Laundry Service',50000),
	('SR023','ST003','CU009','CL004','2019/3/3','Laundry Service',50000),
	('SR024','ST004','CU007','CL007','2019/1/8','Ironing Service',40000),
	('SR025','ST005','CU010','CL005','2019/2/10','Laundry Service',50000)

--insert MsDetailService

INSERT INTO MsDetailPurchaseTransaction(serviceID, clothesID) 
VALUES
	('SR001','CL005')
	('SR002','CL006')
	('SR003','CL009')
	('SR004','CL008')
	('SR005','CL004')
	('SR006','CL006')
	('SR007','CL010')
	('SR008','CL009')
	('SR009','CL003')
	('SR010','CL005')
	('SR011','CL005')
	('SR012','CL002')
	('SR013','CL005')
	('SR014','CL005')
	('SR015','CL008')
	('SR016','CL010')
	('SR017','CL010')
	('SR018','CL003')
	('SR019','CL008')
	('SR020','CL007')
	('SR021','CL007')
	('SR022','CL002')
	('SR023','CL004')
	('SR024','CL007')
	('SR025','CL005')

--insert MsClothes

INSERT INTO MsClothes
VALUES
 ('CL001', 'Gajah Duduk', 'Cotton'),
 ('CL002', 'Karpet terbang', 'Viscose'),
 ('CL003', 'So cool', 'Polyester'),
 ('CL004', 'Boost', 'Linen'),
 ('CL005', 'Amril', 'Wool'),
 ('CL006', 'LEVI', 'Linen'),
 ('CL007', 'GuCai', 'Wool'),
 ('CL008', 'Off-Black', 'Polyester'),
 ('CL009', 'Supraman', 'Viscose'),
 ('CL010', 'Baleniaga', 'Cotton')

--Insert Transaction

INSERT INTO MsMsPurchaseTransaction(purchaseID, staffID, vendorID, materialID, purchaseDATE, quantity) 
VALUES
	('PU0026','ST002','VE005','MA001','2019/12/4',3)

INSERT INTO MsDetailPurchaseTransaction(purchaseID, materialID) 
VALUES
	('PU0026','MA001')

INSERT INTO MsDetailPurchaseTransaction(serviceID, staffID, customerID, clothesID, serviceDate, serviceType, servicePrice) 
VALUES
	('SR026','ST003','CU008','CL010','2019/12/20','Dry Cleaning Service',20000)

INSERT INTO MsDetailPurchaseTransaction(serviceID, clothesID) 
VALUES
	
	('SR026','CL003')