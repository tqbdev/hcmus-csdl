/************** Tạo CSDL **************/
GO
CREATE DATABASE KyTucXa
GO
USE KyTucXa
/************** Tạo bảng **************/
GO
-- Tạo bảng KHUVUC --
CREATE TABLE KHUVUC
(
	IDKhuVuc nvarchar(10),
	TenKhuVuc nvarchar(30),
	PhongQuanLy nvarchar(10)
	PRIMARY KEY (IDKhuVuc)
)

-- Tạo bảng DAYNHA --
CREATE TABLE DAYNHA
(
	IDKhuVuc nvarchar(10),
	IDDay nvarchar(10),
	Ten nvarchar(30),
	PhongBaoVe nvarchar(10)
	PRIMARY KEY (IDKhuVuc, IDDay)
)

-- Tạo bảng PHONG --
CREATE TABLE PHONG
(
	IDKhuVuc nvarchar(10),
	IDPhong nvarchar(10),
	IDDay nvarchar(10),
	SoLuongToiDa int
	PRIMARY KEY (IDDAY, IDKhuVuc, IDPhong)
)

/************** Tạo khoá ngoại **************/
GO
-- Tạo khoá ngoại FK_DAYNHA_KHUVUC --
ALTER TABLE DAYNHA
ADD CONSTRAINT FK_DAYNHA_KHUVUC
FOREIGN KEY (IDKhuVuc)
REFERENCES KHUVUC(IDKhuVuc)

-- Tạo khoá ngoại FK_PHONG_DAYNHA --
ALTER TABLE PHONG
ADD CONSTRAINT FK_PHONG_DAYNHA
FOREIGN KEY (IDKhuVuc, IDDay)
REFERENCES DAYNHA(IDKhuVuc, IDDay)

/************** Nhập liệu **************/
GO
-- Nhập dữ liệu bảng KHUVUC --
INSERT INTO KHUVUC VALUES ('KV01', N'Khu vực 1', 'A10')
INSERT INTO KHUVUC VALUES ('KV02', N'Khu vực 2', NULL)

-- Nhập dữ liệu bảng DAYNHA --
INSERT INTO DAYNHA VALUES ('KV01', 'D1', N'Dãy nhà A', 'A10')
INSERT INTO DAYNHA VALUES ('KV01', 'D2', N'Dãy nhà B', 'B10')

-- Nhập dữ liệu bảng PHONG --
INSERT INTO PHONG VALUES ('KV01', 'A10', 'D1', NULL)
INSERT INTO PHONG VALUES ('KV01', 'A11', 'D1', 5)
INSERT INTO PHONG VALUES ('KV01', 'A12', 'D1', 6)
INSERT INTO PHONG VALUES ('KV01', 'B10', 'D2', NULL)
INSERT INTO PHONG VALUES ('KV01', 'B11', 'D2', 7) 