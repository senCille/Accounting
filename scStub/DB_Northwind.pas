unit DB_Northwind;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Comp.Script,
  System.Classes,
  CommonUnit;

type
  TDB_Northwind = class
  private
     FCon                  :TFDConnection;
     FSetMaxDelegate       :TSetMaxEvent;
     FShowProgressDelegate :TShowProgressEvent;
     FShowErrorDelegate    :TShowErrorEvent;
     procedure StepUp(CurrentProc :string);
     procedure SetMax(MaxValue    :Integer);
     procedure ShowError(Text :string);
     procedure CreateTable_EMPLOYEES;
     procedure CreateTable_CATEGORIES;
     procedure CreateTable_CUSTOMERS;
     procedure CreateTable_SHIPPERS;
     procedure CreateTable_ORDERS;
     procedure CreateTable_SUPPLIERS;
     procedure CreateTable_PRODUCTS;
     procedure CreateTable_ORDER_DETAILS;
     procedure CreatePrimaryKeys;
     procedure CreateForeignKeys;
     procedure CreateIndexes;
     procedure CreateViews;
  public
     procedure Execute(prmConnection :TFDConnection);
     property  OnShowProgress :TShowProgressEvent read FShowProgressDelegate write FShowProgressDelegate;
     property  OnSetMax       :TSetMaxEvent       read FSetMaxDelegate       write FSetMaxDelegate;
     property  OnShowError    :TShowErrorEvent    read FShowErrorDelegate    write FShowErrorDelegate;
  end;

implementation

uses System.SysUtils,
     FMX.Dialogs, FMX.Forms,
     senCille.SQLConnect;

{ TDB_Northwind }

procedure TDB_Northwind.Execute(prmConnection: TFDConnection);
begin
   try
      FCon := prmConnection;
      SetMax(9);
      StepUp('Creating Table EMPLOYEES'    ); CreateTable_EMPLOYEES;     Application.ProcessMessages;
      StepUp('Creating Table CATEGORIES'   ); CreateTable_CATEGORIES;    Application.ProcessMessages;
      StepUp('Creating Table CUSTOMERS'    ); CreateTable_CUSTOMERS;     Application.ProcessMessages;
      StepUp('Creating Table SHIPPERS'     ); CreateTable_SHIPPERS;      Application.ProcessMessages;
      StepUp('Creating Table ORDERS'       ); CreateTable_ORDERS;        Application.ProcessMessages;
      StepUp('Creating Table SUPPLIERS'    ); CreateTable_SUPPLIERS;     Application.ProcessMessages;
      StepUp('Creating Table PRODUCTS'     ); CreateTable_PRODUCTS;      Application.ProcessMessages;
      StepUp('Creating Table ORDER_DETAILS'); CreateTable_ORDER_DETAILS; Application.ProcessMessages;
      StepUp('Creating Table PRIMARY KEYS' ); CreatePrimaryKeys;
      StepUp('Creating Table FOREIGN KEYS' ); CreateForeignKeys;
      StepUp('Creating Table INDEXES'      ); CreateIndexes;
      StepUp('Creating Table VIEWS'        ); CreateViews;
   except
      on E: Exception do begin
         ShowMessage(E.Message);
         Halt(1);
      end;
   end;
end;

procedure TDB_Northwind.StepUp(CurrentProc :string);
begin
   if Assigned(FShowProgressDelegate) then
      FShowProgressDelegate(CurrentProc);
end;

procedure TDB_Northwind.SetMax(MaxValue :Integer);
begin
   if Assigned(FSetMaxDelegate) then
      FSetMaxDelegate(MaxValue);
end;

procedure TDB_Northwind.ShowError(Text :string);
begin
   if Assigned(FShowErrorDelegate) then
      FShowErrorDelegate(Text);
end;

procedure TDB_Northwind.CreateTable_EMPLOYEES;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      'CREATE TABLE EMPLOYEES (                                  '        ,
	     '    ID_EMPLOYEE    INTEGER       NOT NULL ,               '        ,
	     '    LAST_NAME      VARCHAR(20)   NOT NULL                 '+Collate,
	     '    FIRST_NAME     VARCHAR(10)   NOT NULL                 '+Collate,
	     '    TITLE          VARCHAR(30)                            '+Collate,
	     '    COURTESY_TITLE VARCHAR(25)                            '+Collate,
	     '    BIRTH_DATE     TIMESTAMP              ,               '        ,
	     '    HIRE_DATE      TIMESTAMP              ,               '        ,
	     '    ADDRESS        VARCHAR(60)                            '+Collate,
	     '    CITY           VARCHAR(15)                            '+Collate,
	     '    REGION         VARCHAR(15)                            '+Collate,
	     '    POSTAL_CODE    VARCHAR(10)                            '+Collate,
	     '    COUNTRY        VARCHAR(15)                            '+Collate,
	     '    HOME_PHONE     VARCHAR(24)                            '+Collate,
	     '    EXTENSION      VARCHAR( 4)                            '+Collate,
	     '    PHOTO          BLOB SUB_TYPE BINARY SEGMENT SIZE 400, '        ,
	     '    NOTES          BLOB SUB_TYPE BINARY SEGMENT SIZE 400, '        ,
	     '    REPORTS_TO     INTEGER               ,                '        ,
	     '    PHOTO_PATH     VARCHAR (255)                          '+Collate(True),
      '   );                                                     ']);
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_CATEGORIES;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      'CREATE TABLE CATEGORIES (                                   ',
      '      	ID_CATEGORY   INTEGER       NOT NULL ,               ',
      '      	DS_CATEGORY   VARCHAR(15)   NOT NULL                 '+Collate,
      '      	DESCRIPTION   BLOB SUB_TYPE BINARY SEGMENT SIZE 400, ',
      '      	PICTURE       BLOB SUB_TYPE BINARY SEGMENT SIZE 400  ',
      ' ); ']);
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_CUSTOMERS;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      ' CREATE TABLE CUSTOMERS (                 ',
   	  '     ID_CUSTOMER    VARCHAR( 5) NOT NULL  '+Collate,
   	  '     COMPANY_NAME   VARCHAR(40) NOT NULL  '+Collate,
   	  '     CONTACT_NAME   VARCHAR(30)           '+Collate,
   	  '     CONTACT_TITLE  VARCHAR(30)           '+Collate,
   	  '     ADDRESS        VARCHAR(60)           '+Collate,
   	  '     CITY           VARCHAR(15)           '+Collate,
   	  '     REGION         VARCHAR(15)           '+Collate,
   	  '     POSTAL_CODE    VARCHAR(10)           '+Collate,
   	  '     COUNTRY        VARCHAR(15)           '+Collate,
   	  '     PHONE          VARCHAR(24)           '+Collate,
   	  '     FAX            VARCHAR(24)           '+Collate(True),
      ' );                                       ']);
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_SHIPPERS;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      'CREATE TABLE SHIPPERS (               ',
   	  '	  ID_SHIPPER   INTEGER     NOT NULL, ',
   	  '	  COMPANY_NAME VARCHAR(40) NOT NULL  '+Collate,
   	  '	  PHONE        VARCHAR(24)           '+Collate(True),
      ' );                                   ']);
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_SUPPLIERS;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      'CREATE TABLE SUPPLIERS (                  ',
      '  	ID_SUPPLIER   INTEGER       NOT NULL ,  ',
      '  	COMPANY_NAME  VARCHAR(  40) NOT NULL    '+Collate,
      '  	CONTACT_NAME  VARCHAR(  30)             '+Collate,
      '  	CONTACT_TITLE VARCHAR(  30)             '+Collate,
      '  	ADDRESS       VARCHAR(  60)             '+Collate,
      '  	CITY          VARCHAR(  15)             '+Collate,
      '  	REGION        VARCHAR(  15)             '+Collate,
      '  	POSTAL_CODE   VARCHAR(  10)             '+Collate,
      '  	COUNTRY       VARCHAR(  15)             '+Collate,
      '  	PHONE         VARCHAR(  24)             '+Collate,
      '  	FAX           VARCHAR(  24)             '+Collate,
      '  	HOME_PAGE     VARCHAR(2000)            '+Collate(True),
      ' ); ']);
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_ORDERS;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
     ' CREATE TABLE ORDERS (                        ',
     '   	ID_ORDER        INTEGER      NOT NULL ,   ',
     '   	ID_CUSTOMER     VARCHAR (5)               '+Collate,
     '   	ID_EMPLOYEE     INTEGER               ,   ',
     '   	DATE_ORDER      VARCHAR(15)               '+Collate,
     '   	DATE_REQUIRED   VARCHAR(15)               '+Collate,
     '   	DATE_SHIPPED    VARCHAR(15)               '+Collate,
     '   	SHIP_VIA        INTEGER               ,   ',
     '   	FREIGHT         INTEGER               ,   ',
     '   	SHIP_NAME       VARCHAR(40)               '+Collate,
     '   	SHIP_ADDRESS    VARCHAR(60)               '+Collate,
     '   	SHIP_CITY       VARCHAR(15)               '+Collate,
     '   	SHIP_REGION     VARCHAR(15)               '+Collate,
     '   	SHIP_POSTALCODE VARCHAR(10)               '+Collate,
     '   	SHIP_COUNTRY    VARCHAR(15)               '+Collate(True),
     ' ); ']);
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_PRODUCTS;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      ' CREATE TABLE PRODUCTS (                      ',
	     '    ID_PRODUCT        INTEGER     NOT NULL ,  ',
	     '    DS_PRODUCT        VARCHAR(40) NOT NULL    '+Collate,
	     '    ID_SUPPLIER       INTEGER              ,  ',
	     '    ID_CATEGORY       INTEGER              ,  ',
	     '    QUANTITY_PER_UNIT VARCHAR(20)             '+Collate,
	     '    UNIT_PRICE        NUMERIC(15,3)        ,  ',
	     '    UNITS_IN_STOCK    INTEGER              ,  ',
	     '    UNITS_ON_ORDER    INTEGER              ,  ',
	     '    REORDER_LEVEL     INTEGER              ,  ',
	     '    DISCONTINUED      INTEGER     NOT NULL    ',
      ' ); ']);

     (*
      CONSTRAINT CK_Products_UNIT_PRICE CHECK (UNIT_PRICE >= 0),
     	CONSTRAINT CK_REORDER_LEVEL       CHECK (REORDER_LEVEL >= 0),
     	CONSTRAINT CK_UNITS_IN_STOCK       CHECK (UNITS_IN_STOCK >= 0),
     	CONSTRAINT CK_UNITS_ON_ORDER       CHECK (UNITS_ON_ORDER >= 0)
     );
     *)
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreateTable_ORDER_DETAILS;
var Q :TFDQuery;
begin
   Q := FCon.CreateQuery([
      ' CREATE TABLE ORDER_DETAILS (           ',
  	   '    ID_ORDER   INTEGER       NOT NULL , ',
  	   '    ID_PRODUCT INTEGER       NOT NULL , ',
  	   '    UNIT_PRICE NUMERIC(15,3) NOT NULL , ',
  	   '    QUANTITY   INTEGER       NOT NULL , ',
  	   '    DISCOUNT   INTEGER       NOT NULL   ',
      ' ); ']);
     (*
      CONSTRAINT CK_Discount CHECK (Discount >= 0 and (Discount <= 1)),
     	CONSTRAINT CK_Quantity CHECK (Quantity > 0),
     	CONSTRAINT CK_UNIT_PRICE CHECK (UNIT_PRICE >= 0)
      create synonym "Order Details" for Order_Details;
     *)
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;

procedure TDB_Northwind.CreatePrimaryKeys;
const
   Elements = 8;
   DataLines:array[1..Elements] of string = (
      'ALTER TABLE EMPLOYEES     ADD CONSTRAINT PK_EMPLOYEES     PRIMARY KEY (ID_EMPLOYEE);         ',
      'ALTER TABLE CATEGORIES    ADD CONSTRAINT PK_CATEGORIES    PRIMARY KEY (ID_CATEGORY);         ',
      'ALTER TABLE CUSTOMERS     ADD CONSTRAINT PK_CUSTOMERS     PRIMARY KEY (ID_CUSTOMER);         ',
      'ALTER TABLE SHIPPERS      ADD CONSTRAINT PK_SHIPPERS      PRIMARY KEY (ID_SHIPPER );         ',
      'ALTER TABLE SUPPLIERS     ADD CONSTRAINT PK_SUPPLIERS     PRIMARY KEY (ID_SUPPLIER);         ',
      'ALTER TABLE ORDERS        ADD CONSTRAINT PK_ORDERS        PRIMARY KEY (ID_ORDER   );         ',
      'ALTER TABLE PRODUCTS      ADD CONSTRAINT PK_PRODUCTS      PRIMARY KEY (ID_PRODUCT	);         ',
      'ALTER TABLE ORDER_DETAILS ADD CONSTRAINT PK_ORDER_DETAILS PRIMARY KEY (ID_ORDER, ID_PRODUCT); ');

var Q        :TFDQuery;
    Sentence :string;
begin
   for Sentence in DataLines do begin
      Q := FCon.CreateQuery([Sentence]);
      try
         try
            Q.ExecSQL(True);
         except
            ShowError(Q.SQL.Text);
         end;
      finally
        Q.Free;
      end;
   end;
end;

procedure TDB_Northwind.CreateForeignKeys;
const
   Elements = 8;
   DataLines:array[1..Elements] of string = (
      'ALTER TABLE EMPLOYEES     ADD CONSTRAINT FK_EMPLOYEES_EMPLOYEES    FOREIGN KEY (REPORTS_TO  ) REFERENCES EMPLOYEES (ID_EMPLOYEE); ',
	     'ALTER TABLE ORDERS        ADD CONSTRAINT FK_ORDERS_CUSTOMERS       FOREIGN KEY	(ID_CUSTOMER ) REFERENCES CUSTOMERS (ID_CUSTOMER); ',
      'ALTER TABLE ORDERS        ADD CONSTRAINT FK_ORDERS_EMPLOYEES       FOREIGN KEY	(ID_EMPLOYEE ) REFERENCES EMPLOYEES (ID_EMPLOYEE); ',
	     'ALTER TABLE ORDERS        ADD CONSTRAINT FK_ORDERS_SHIPPERS        FOREIGN KEY	(SHIP_VIA    ) REFERENCES SHIPPERS  (ID_SHIPPER ); ',
      'ALTER TABLE PRODUCTS      ADD CONSTRAINT FK_PRODUCTS_CATEGORIES    FOREIGN KEY	(ID_CATEGORY ) REFERENCES CATEGORIES(ID_CATEGORY); ',
	     'ALTER TABLE PRODUCTS      ADD CONSTRAINT FK_PRODUCTS_SUPPLIERSS    FOREIGN KEY	(ID_SUPPLIER ) REFERENCES SUPPLIERS (ID_SUPPLIER); ',
      'ALTER TABLE ORDER_DETAILS ADD CONSTRAINT FK_ORDER_DETAILS_ORDERS   FOREIGN KEY	(ID_ORDER    ) REFERENCES ORDERS    (ID_ORDER   ); ',
	     'ALTER TABLE ORDER_DETAILS ADD CONSTRAINT FK_ORDER_DETAILS_PRODUCTS FOREIGN KEY (ID_PRODUCT	 ) REFERENCES PRODUCTS  (ID_PRODUCT ); ');

var Q        :TFDQuery;
    Sentence :string;
begin
   for Sentence in DataLines do begin
      Q := FCon.CreateQuery([Sentence]);
      try
         try
            Q.ExecSQL(True);
         except
            ShowError(Q.SQL.Text);
         end;
      finally
        Q.Free;
      end;
   end;
end;

procedure TDB_Northwind.CreateIndexes;
const
   Elements = 24;
   DataLines:array[1..Elements] of string = (
      'CREATE INDEX IDX_EMPL_LAST_NAME                ON EMPLOYEES    (LAST_NAME      ); ',
      'CREATE INDEX IDX_EMPL_POSTAL_CODE              ON EMPLOYEES    (POSTAL_CODE    ); ',

      'CREATE INDEX IDX_CATEG_DS_CATEGORY             ON CATEGORIES   (DS_CATEGORY    ); ',

      'CREATE INDEX IDX_CUST_CITY                     ON CUSTOMERS    (CITY           ); ',
      'CREATE INDEX IDX_CUST_COMPANY_NAME             ON CUSTOMERS    (COMPANY_NAME   ); ',
      'CREATE INDEX IDX_CUST_POSTAL_CODE              ON CUSTOMERS    (POSTAL_CODE    ); ',
      'CREATE INDEX IDX_CUST_REGION                   ON CUSTOMERS    (REGION         ); ',

      'CREATE INDEX IDX_SUPP_COMPANY_NAME             ON SUPPLIERS    (COMPANY_NAME   ); ',
      'CREATE INDEX IDX_SUPP_POSTAL_CODE              ON SUPPLIERS    (POSTAL_CODE    ); ',

      'CREATE INDEX IDX_ORD_ID_CUSTOMER               ON ORDERS       (ID_CUSTOMER    ); ',
      'CREATE INDEX IDX_ORD_CUSTOMERSORDERS           ON ORDERS       (ID_CUSTOMER    ); ',
      'CREATE INDEX IDX_ORD_ID_EMPLOYEE               ON ORDERS       (ID_EMPLOYEE    ); ',
      'CREATE INDEX IDX_ORD_EMPLOYEESORDERS           ON ORDERS       (ID_EMPLOYEE    ); ',
      'CREATE INDEX IDX_ORD_DATE_ORDER                ON ORDERS       (DATE_ORDER     ); ',
      'CREATE INDEX IDX_ORD_DATE_SHIPPED              ON ORDERS       (DATE_SHIPPED   ); ',
      'CREATE INDEX IDX_ORD_SHIPPERSORDERS            ON ORDERS       (SHIP_VIA       ); ',
      'CREATE INDEX IDX_ORD_SHIP_POSTALCODE           ON ORDERS       (SHIP_POSTALCODE); ',

      'CREATE INDEX IDX_PROD_CATEGORIESPRODUCTS       ON PRODUCTS     (ID_CATEGORY    ); ',
      'CREATE INDEX IDX_PROD_ID_CATEGORY              ON PRODUCTS     (ID_CATEGORY    ); ',
      'CREATE INDEX IDX_PROD_DS_PRODUCT               ON PRODUCTS     (DS_PRODUCT     ); ',
      'CREATE INDEX IDX_PROD_ID_SUPPLIER              ON PRODUCTS     (ID_SUPPLIER    ); ',
      'CREATE INDEX IDX_PROD_SUPPLIERSPRODUCTS        ON PRODUCTS     (ID_SUPPLIER    ); ',

      'CREATE INDEX IDX_ORD_DET_ID_ORDER              ON ORDER_DETAILS(ID_ORDER       ); ',
      'CREATE INDEX IDX_ORD_DET_ID_PRODUCT            ON ORDER_DETAILS(ID_PRODUCT     ); ');
var Q        :TFDQuery;
    Sentence :string;
begin
   for Sentence in DataLines do begin
      Q := FCon.CreateQuery([Sentence]);
      try
         try
            Q.ExecSQL(True);
         except
            ShowError(Q.SQL.Text);
         end;
      finally
        Q.Free;
      end;
   end;
end;

procedure TDB_Northwind.CreateViews;
var Q :TFDQuery;
begin
   Exit;
   Q := FCon.CreateQuery([
      ' CREATE VIEW  CUSTOMER_AND_SUPPLIERS_BY_CITY  AS                     ',
      '    SELECT CITY, COMPANY_NAME, CONTACT_NAME, ''CUSTOMERS'' TABLEFROM   ',
      '    FROM CUSTOMERS                                                   ',
      '    UNION                                                            ',
      '    SELECT CITY, COMPANY_NAME, CONTACT_NAME, ''SUPPLIERS''             ',
      '    FROM SUPPLIERS;                                                  ',
      '    --ORDER BY CITY, COMPANY_NAME                                     ',
      ' );']);
(* create synonym "Customer and Suppliers by City" for Customer_and_Suppliers_by_City;

create view Alphabetical_list_of_products AS
SELECT Products.*, Categories.DS_CATEGORY
FROM Categories, Products
WHERE Categories.ID_CATEGORY = Products.ID_CATEGORY
  and (((Products.Discontinued)=0));

create synonym "Alphabetical list of products" for Alphabetical_list_of_products;

create view Current_Product_List AS
SELECT ID_PRODUCT, DS_PRODUCT
FROM Products
WHERE (((Discontinued)=0));
--ORDER BY Product_List.DS_PRODUCT

create synonym "Current Product List" for Current_Product_List;

create view Orders_Qry AS
SELECT Orders.ID_ORDER, Orders.ID_CUSTOMER, Orders.ID_Employee, Orders.DATE_ORDER, Orders.DATE_REQUIRED,
	Orders.DATE_SHIPPED, Orders.SHIP_VIA, Orders.Freight, Orders.SHIP_NAME, Orders.SHIP_ADDRESS, Orders.SHIP_CITY,
	Orders.SHIP_REGION, Orders.SHIP_POSTALCODE, Orders.SHIP_COUNTRY,
	Customers.COMPANY_NAME, Customers.Address, Customers.City, Customers.Region, Customers.POSTAL_CODE, Customers.Country
FROM Customers,Orders
where Customers.ID_CUSTOMER = Orders.ID_CUSTOMER;

create synonym "Orders Qry" for Orders_Qry;

create view Products_Above_Average_Price AS
SELECT Products.DS_PRODUCT, Products.UNIT_PRICE
FROM Products
WHERE Products.UNIT_PRICE>(SELECT AVG(UNIT_PRICE) From Products);
--ORDER BY Products.UNIT_PRICE DESC

create synonym "Products Above Average Price" for Products_Above_Average_Price;

create view Products_by_Category AS
SELECT Categories.DS_CATEGORY, Products.DS_PRODUCT, Products.QUANTITY_PER_UNIT, Products.UNITS_IN_STOCK, Products.Discontinued
FROM Categories, Products
WHERE Categories.ID_CATEGORY = Products.ID_CATEGORY
 and Products.Discontinued <> 1;
--ORDER BY Categories.DS_CATEGORY, Products.DS_PRODUCT

create synonym "Products by Category" for Products_by_Category;

create or replace view Quarterly_Orders AS
SELECT DISTINCT Customers.ID_CUSTOMER, Customers.COMPANY_NAME, Customers.City, Customers.Country
FROM Customers, Orders
WHERE Customers.ID_CUSTOMER = Orders.ID_CUSTOMER
  and to_date(Orders.DATE_ORDER, 'MM/DD/YYYY') BETWEEN to_date('19970101', 'YYYYMMDD') And to_date('19971231', 'YYYYMMDD');

  create synonym "Quarterly Orders" for Quarterly_Orders;

create view Invoices AS
SELECT Orders.SHIP_NAME, Orders.SHIP_ADDRESS, Orders.SHIP_CITY, Orders.SHIP_REGION, Orders.SHIP_POSTALCODE,
	Orders.SHIP_COUNTRY, Orders.ID_CUSTOMER, Customers.COMPANY_NAME AS CustomerName, Customers.Address, Customers.City,
	Customers.Region, Customers.POSTAL_CODE, Customers.Country,
	(FIRST_NAME||' '||LAST_NAME) AS Salesperson,
	Orders.ID_ORDER, Orders.DATE_ORDER, Orders.DATE_REQUIRED, Orders.DATE_SHIPPED, Shippers.COMPANY_NAME As ShipperName,
	Order_Details.ID_PRODUCT, Products.DS_PRODUCT, Order_Details.UNIT_PRICE, Order_Details.Quantity,
	Order_Details.Discount,
	Order_Details.UNIT_PRICE*Quantity*(1-Discount)/100 *100  AS ExtendedPrice, Orders.Freight
FROM 	Shippers, Products, Employees, Customers, Orders, Order_Details
where Customers.ID_CUSTOMER = Orders.ID_CUSTOMER
  and Employees.ID_Employee = Orders.ID_Employee
  and Orders.ID_ORDER = Order_Details.ID_ORDER
  and Products.ID_PRODUCT = Order_Details.ID_PRODUCT
  and Shippers.ID_SHIPPER = Orders.SHIP_VIA;


create view Order_Details_Extended AS
SELECT Order_Details.ID_ORDER, Order_Details.ID_PRODUCT, Products.DS_PRODUCT,
	Order_Details.UNIT_PRICE, Order_Details.Quantity, Order_Details.Discount,
	Order_Details.UNIT_PRICE*Quantity*(1-Discount)/100 * 100 AS ExtendedPrice
FROM Products, Order_Details
where Products.ID_PRODUCT = Order_Details.ID_PRODUCT;
--ORDER BY Order Details.ID_ORDER

create synonym "Order Details Extended" for Order_Details_Extended;

create view Order_Subtotals AS
SELECT Order_Details.ID_ORDER, Sum(Order_Details.UNIT_PRICE*Quantity*(1-Discount)/100*100) AS Subtotal
FROM Order_Details
GROUP BY Order_Details.ID_ORDER;

create synonym "Order Subtotals" for Order_Subtotals;

create or replace view Product_Sales_for_1997 AS
SELECT Categories.DS_CATEGORY, Products.DS_PRODUCT,
Sum(Order_Details.UNIT_PRICE*Quantity*(1-Discount)/100*100) AS ProductSales
FROM Categories , Products, Order_Details, Orders
where Categories.ID_CATEGORY = Products.ID_CATEGORY
and	  Orders.ID_ORDER = Order_Details.ID_ORDER
and	  Products.ID_PRODUCT = Order_Details.ID_PRODUCT
and   to_date(Orders.DATE_SHIPPED, 'MM/DD/YYYY') Between to_date('19970101', 'YYYYMMDD') And to_date('19971231', 'YYYYMMDD')
GROUP BY Categories.DS_CATEGORY, Products.DS_PRODUCT;

create synonym "Product Sales for 1997" for Product_Sales_for_1997;

create view Category_Sales_for_1997 AS
SELECT Product_Sales_for_1997.DS_CATEGORY, Sum(Product_Sales_for_1997.ProductSales) AS CategorySales
FROM Product_Sales_for_1997
GROUP BY Product_Sales_for_1997.DS_CATEGORY;

create synonym "Category Sales for 1997" for Category_Sales_for_1997;

create or replace view Sales_by_Category AS
SELECT Categories.ID_CATEGORY, Categories.DS_CATEGORY, Products.DS_PRODUCT,
	Sum(Order_Details_Extended.ExtendedPrice) AS ProductSales
FROM 	Categories, Products, Order_Details_Extended, Orders
where  Orders.ID_ORDER = Order_Details_Extended.ID_ORDER
and    Products.ID_PRODUCT = Order_Details_Extended.ID_PRODUCT
and   Categories.ID_CATEGORY = Products.ID_CATEGORY
and   to_date(Orders.DATE_ORDER, 'MM/DD/YYYY') BETWEEN to_date('19970101', 'YYYYMMDD') And to_date('19971231', 'YYYYMMDD')
GROUP BY Categories.ID_CATEGORY, Categories.DS_CATEGORY, Products.DS_PRODUCT;
--ORDER BY Products.DS_PRODUCT

create synonym "Sales by Category" for Sales_by_Category;

create or replace view Sales_Totals_by_Amount AS
SELECT Order_Subtotals.Subtotal AS SaleAmount, Orders.ID_ORDER, Customers.COMPANY_NAME, Orders.DATE_SHIPPED
FROM 	Customers,  Order_Subtotals, Orders
where Orders.ID_ORDER = Order_Subtotals.ID_ORDER
and  Customers.ID_CUSTOMER = Orders.ID_CUSTOMER
and (Order_Subtotals.Subtotal >2500) AND (to_date(Orders.DATE_SHIPPED, 'MM/DD/YYYY') BETWEEN to_date('19970101', 'YYYYMMDD') And to_date('19971231', 'YYYYMMDD'));

create synonym "Sales Totals by Amount" for Sales_Totals_by_Amount;

create view Summary_of_Sales_by_Quarter AS
SELECT Orders.DATE_SHIPPED, Orders.ID_ORDER, Order_Subtotals.Subtotal
FROM Orders, Order_Subtotals
where Orders.ID_ORDER = Order_Subtotals.ID_ORDER
and Orders.DATE_SHIPPED IS NOT NULL;
--ORDER BY Orders.DATE_SHIPPED

create synonym "Summary of Sales by Quarter" for Summary_of_Sales_by_Quarter;

create view Summary_of_Sales_by_Year AS
SELECT Orders.DATE_SHIPPED, Orders.ID_ORDER, Order_Subtotals.Subtotal
FROM Orders, Order_Subtotals
where Orders.ID_ORDER = Order_Subtotals.ID_ORDER
and Orders.DATE_SHIPPED IS NOT NULL;
--ORDER BY Orders.DATE_SHIPPED

create synonym "Summary of Sales by Year" for Summary_of_Sales_by_Year;
*)
   try
      try
         Q.ExecSQL(True);
      except
         ShowError(Q.SQL.Text);
      end;
   finally
     Q.Free;
   end;
end;


end.


