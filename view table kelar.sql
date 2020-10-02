--1
SELECT
[CustomerId] = MsCustomer.customerID,
[CustomerName] = MsCustomer.customerName,
[TotalServicePrice] = SUM(servicePrice)
FROM MsCustomer , MsService
WHERE MsService.customerID = MsCustomer.customerID AND MONTH(MsService.serviceDate)=6 AND MsCustomer.customerGender = 'Male'
GROUP BY MsCustomer.customerID, MsCustomer.customerName

--2
SELECT
[StaffName] = staffName,
[PurchaseDate] = purchaseDATE,
[TotalTransaction] = COUNT(purchaseID)
FROM MsStaff s, MsPurchaseTransaction p
WHERE s.staffID = p.staffID AND staffName LIKE '%O%' OR staffName LIKE '%o%'
GROUP BY staffName, purchaseDATE
HAVING COUNT(p.purchaseID) > 1

--3
SELECT
[VendorName] = vendorName,
[PurchaseDate] = FORMAT (purchaseDATE, 'mon dd,yyyy'),
[TotalTransaction] = COUNT(purchaseID),
[TotalPurchasePrice] = SUM(materialPrice * quantity)
FROM MsVendor v, MsPurchaseTransaction p, MsMaterial m
WHERE v.vendorID = p.vendorID AND m.materialID = p. materialID AND DAY(purchaseDATE) % 2 = 1 AND vendorName LIKE 'PT.%'
GROUP BY vendorName , PurchaseDate

--4
SELECT
[StaffName] = s.staffName,
[MaterialName] = m.materialName,
[TotalTransaction] = COUNT(p.purchaseID),
[TotalQuantity] = CAST(SUM(p.quantity) AS VARCHAR) + ' pcs'
FROM MsPurchaseTransaction p, MsStaff s, MsMaterial m
WHERE m.materialID = p. materialID AND s.staffID = p.staffID AND MONTH(purchaseDATE) = 7
GROUP BY staffName, materialName
HAVING SUM(p.quantity) < 9

--5
SELECT
[MaterialID] = 'Material ' + RIGHT(m.materialID,3),
[MaterialName] = UPPER(m.materialName),
[PurchaseDate] = p.purchaseDate,
[Quantity] = p.quantity
FROM MsPurchaseTransaction p JOIN MsMaterial m ON m.materialID = p.materialID
WHERE m.materialType = 'Supplies'  AND p.quantity > ALL 
						    (SELECT AVG(quantity)
						     FROM MsPurchaseTransaction p JOIN MsMaterial m ON m.materialID = p.materialID
						     GROUP BY materialType)

--6

SELECT
[StaffName] =  st.staffName,
[CustomerName]= c.customerName,
[ServiceDate] = FORMAT(svc.serviceDATE, ' dd, Mon, yyyy ')
FROM   MsService svc JOIN MsStaff st ON st.staffID = svc.staffID JOIN MsCustomer c ON c.customerID = svc.customerID
WHERE st.staffName NOT LIKE '% %'AND staffSalary > ALL
    (SELECT AVG(staffSalary)
    FROM MsStaff st JOIN MsService svc ON svc.staffID = st.staffID)
    GROUP BY st.staffName, c.customerName,svc.serviceDATE
--7
SELECT
[ClothesName] = c.clothesName,
[TotalTransaction] =  CAST(COUNT(s.serviceID) AS varchar) + ' transaction',
[ServiceType] = LEFT(s.serviceType, CHARINDEX(' ',s.serviceType)-1),
[ServicePrice] = s.servicePrice
FROM MsService s JOIN MsClothes c ON s.clothesID = s.clothesID
WHERE c.clothesType = 'Cotton' AND s.servicePrice < ALL(SELECT AVG(servicePrice) FROM MsService s JOIN MsClothes c ON c.clothesID = s.clothesID GROUP BY clothesType)
GROUP BY c.clothesName, s.serviceType, s.servicePrice

--8
SELECT * FROM MsPurchaseTransaction p JOIN MsStaff s ON s.staffID = p.StaffId JOIN MsVendor v ON v.vendorID = p.vendorID

SELECT
[StaffFirstName] = LEFT(s.staffName, CHARINDEX(' ',s.staffName)-1),
[VendorName] = v.vendorName,
[VendorPhoneNumber] = '+62' + RIGHT(v.vendorPhoneNumber,11),
[TotalTransaction] = COUNT(p.purchaseID)
FROM MsPurchaseTransaction p JOIN MsStaff s ON s.staffID = p.StaffId JOIN MsVendor v ON v.vendorID = p.vendorID
WHERE quantity > ALL (SELECT AVG(quantity) FROM MsPurchaseTransaction p JOIN MsStaff s ON p.staffID = s.staffID GROUP BY s.staffID) AND s.staffName LIKE '% %'
GROUP BY s.staffName, v.vendorName, v.vendorPhoneNumber
				
--9
CREATE VIEW ViewMaterialPurchase
AS
SELECT
[MaterialName] = m.materialName,
[MaterialPrice] = 'Rp. ' + CAST(m.materialPrice AS VARCHAR),
[TotalTransaction] = COUNT(p.purchaseID),
[TotalPrice] = (SUM(p.quantity)*m.materialPrice)
FROM MsMaterial m JOIN MsPurchaseTransaction p ON m.materialID = p.materialID
WHERE m.materialType = 'Supplies'
GROUP BY m.materialName, m.materialPrice
HAVING COUNT(p.purchaseID) >=2

SELECT * FROM ViewMaterialPurchase

--10
CREATE VIEW ViewMaleCustomerTransaction 
AS
SELECT
[CustomerName] = cs.customerName,
[ClothesName] = cl.clothesName,
[TotalTransaction] = COUNT(s.serviceID),
[TotalPrice] = SUM(s.servicePrice)
FROM MsService s JOIN MsCustomer cs ON cs.customerID = s.customerID JOIN MsClothes cl ON cl.clothesID = s.clothesID
WHERE cs.customerGender LIKE 'Male' AND (cl.clothesType LIKE ('Wool') OR cl.clothesType LIKE ('Linen'))
GROUP BY cs.customerName, cl.clothesName

SELECT * FROM ViewMaleCustomerTransaction