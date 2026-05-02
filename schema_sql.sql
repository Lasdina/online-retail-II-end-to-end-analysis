CREATE TABLE Dim_Product (
    StockCode VARCHAR(50) PRIMARY KEY, -- Kode stok produk sebagai ID unik
    Description TEXT,                  -- Nama atau deskripsi produk
    UnitPrice DECIMAL(10, 2)           -- Harga satuan produk
);

CREATE TABLE Dim_Customer (
    CustomerID INT PRIMARY KEY, -- ID unik untuk setiap pelanggan
    Country VARCHAR(100)        -- Lokasi negara pelanggan
);

CREATE TABLE Fact_Sales (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(50),
    CustomerID INT,
    Quantity INT,
    InvoiceDate TIMESTAMP,
    TotalAmount DECIMAL(15, 2),
    -- Definisi hubungan antar tabel
    CONSTRAINT fk_customer FOREIGN KEY (CustomerID) REFERENCES Dim_Customer(CustomerID),
    CONSTRAINT fk_product FOREIGN KEY (StockCode) REFERENCES Dim_Product(StockCode)
);

-- Menghapus kolom salah yang terbentuk akibat delimiter yang keliru
ALTER TABLE Dim_product DROP COLUMN "StockCode;Description;UnitPrice";

---cek jumlah data
SELECT COUNT(*) AS total_data FROM dim_product;

-- Menghapus kolom salah yang terbentuk akibat delimiter yang keliru
ALTER TABLE dim_customer DROP COLUMN "StockCode;Description;Unit_Price";

-- Menghapus kolom yang null
ALTER TABLE dim_customer DROP COLUMN "Customer ID";

---cek jumlah data
SELECT COUNT(*) AS total_data FROM dim_customer dc;

-- Menghapus kolom yang null
ALTER table fact_sales DROP COLUMN "totalamount";

---cek jumlah data
SELECT COUNT(*) AS total_data FROM fact_sales t;