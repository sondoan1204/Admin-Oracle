/*
 Navicat Premium Data Transfer

 Source Server         : ADMIN
 Source Server Type    : Oracle
 Source Server Version : 110200
 Source Host           : localhost:1521
 Source Schema         : ADMIN

 Target Server Type    : Oracle
 Target Server Version : 110200
 File Encoding         : 65001

 Date: 24/08/2017 15:52:28
*/


-- ----------------------------
-- Table structure for CHITIETDDH
-- ----------------------------
DROP TABLE "ADMIN"."CHITIETDDH";
CREATE TABLE "ADMIN"."CHITIETDDH" (
  "MA_SANPHAM" NUMBER NOT NULL ,
  "MA_DONDATHANG" NUMBER NOT NULL ,
  "SOLUONG" NUMBER ,
  "THANHTIEN" NUMBER ,
  "GIAKHMUA" NUMBER 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "CHITIETDDH"
-- ----------------------------
INSERT INTO "ADMIN"."CHITIETDDH" VALUES ('1', '1', '2', '40000', '20000');
INSERT INTO "ADMIN"."CHITIETDDH" VALUES ('2', '2', '2', '40000', '20000');
INSERT INTO "ADMIN"."CHITIETDDH" VALUES ('3', '3', '4', '80000', '20000');
INSERT INTO "ADMIN"."CHITIETDDH" VALUES ('4', '4', '3', '60000', '20000');
INSERT INTO "ADMIN"."CHITIETDDH" VALUES ('5', '5', '4', '80000', '20000');
INSERT INTO "ADMIN"."CHITIETDDH" VALUES ('1', '2', '1', '20000', '20000');

-- ----------------------------
-- Table structure for CHITIETTAG
-- ----------------------------
DROP TABLE "ADMIN"."CHITIETTAG";
CREATE TABLE "ADMIN"."CHITIETTAG" (
  "MA_TAG" NUMBER NOT NULL ,
  "MA_SANPHAM" NUMBER NOT NULL 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "CHITIETTAG"
-- ----------------------------
INSERT INTO "ADMIN"."CHITIETTAG" VALUES ('1', '1');
INSERT INTO "ADMIN"."CHITIETTAG" VALUES ('2', '2');
INSERT INTO "ADMIN"."CHITIETTAG" VALUES ('3', '3');

-- ----------------------------
-- Table structure for DONDATHANG
-- ----------------------------
DROP TABLE "ADMIN"."DONDATHANG";
CREATE TABLE "ADMIN"."DONDATHANG" (
  "MA_DONDATHANG" NUMBER NOT NULL ,
  "MA_NHANVIEN" NUMBER NOT NULL ,
  "MA_KHACHHANG" NUMBER NOT NULL ,
  "MA_TTDDH" NUMBER NOT NULL ,
  "HTGIAOHANG" NUMBER ,
  "TONGTG" NUMBER ,
  "NGAYTAODDH" DATE ,
  "TENNGUOINHAN" NVARCHAR2(250) ,
  "DIACHINGUOINHAN" NVARCHAR2(250) ,
  "SDTNGUOINHAN" VARCHAR2(11 BYTE) ,
  "GHICHU" NVARCHAR2(250) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "DONDATHANG"
-- ----------------------------
INSERT INTO "ADMIN"."DONDATHANG" VALUES ('1', '3', '1', '5', '1', '234000', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Sơn đoàn', 'đâu đó việt nam', '0987654321', 'ahihi');
INSERT INTO "ADMIN"."DONDATHANG" VALUES ('2', '2', '2', '5', '1', '60000', TO_DATE('2017-07-03 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
INSERT INTO "ADMIN"."DONDATHANG" VALUES ('3', '1', '1', '3', '1', '300000', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
INSERT INTO "ADMIN"."DONDATHANG" VALUES ('4', '2', '2', '2', '2', '234000', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);
INSERT INTO "ADMIN"."DONDATHANG" VALUES ('5', '1', '1', '1', '2', '234000', TO_DATE('2017-08-04 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for HOADON
-- ----------------------------
DROP TABLE "ADMIN"."HOADON";
CREATE TABLE "ADMIN"."HOADON" (
  "MA_HOADON" NUMBER NOT NULL ,
  "MA_DONDATHANG" NUMBER NOT NULL ,
  "MA_NHANVIEN" NUMBER NOT NULL ,
  "MA_TTHD" NUMBER NOT NULL ,
  "NGAYTAOHD" DATE ,
  "NGAYGIAOHD" DATE ,
  "GHICHUHD" NVARCHAR2(100) ,
  "MST" VARCHAR2(10 BYTE) ,
  "TENCONGTY" NVARCHAR2(250) ,
  "DIACHICONTY" NVARCHAR2(250) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "HOADON"
-- ----------------------------
INSERT INTO "ADMIN"."HOADON" VALUES ('1', '1', '1', '1', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Giao trong giờ hành chánh', NULL, NULL, NULL);
INSERT INTO "ADMIN"."HOADON" VALUES ('2', '2', '1', '2', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Giao trong giờ hành chánh', NULL, NULL, NULL);
INSERT INTO "ADMIN"."HOADON" VALUES ('3', '3', '1', '1', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'Giao trong giờ hành chánh', NULL, NULL, NULL);
INSERT INTO "ADMIN"."HOADON" VALUES ('25', '5', '3', '1', TO_DATE('2017-08-21 19:36:14', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2017-08-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'nulllll', '12345678', 'chưa biết', 'kakak');

-- ----------------------------
-- Table structure for KHACHHANG
-- ----------------------------
DROP TABLE "ADMIN"."KHACHHANG";
CREATE TABLE "ADMIN"."KHACHHANG" (
  "MA_KHACHHANG" NUMBER NOT NULL ,
  "TENKHACHHANG" NVARCHAR2(100) ,
  "TENDANGNHAPKH" VARCHAR2(100 BYTE) ,
  "MATKHAUKH" VARCHAR2(100 BYTE) ,
  "DIENTHOAI" VARCHAR2(11 BYTE) ,
  "DIACHI" NVARCHAR2(100) ,
  "EMAIL" VARCHAR2(100 BYTE) ,
  "GIOITINHKH" CHAR(1 BYTE) ,
  "NGAYSINHKH" DATE 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "KHACHHANG"
-- ----------------------------
INSERT INTO "ADMIN"."KHACHHANG" VALUES ('1', 'Trần Minh Đức', 'ductm', '123', '01225037723', '1183/65 phạm thế hiển', 'kiemtheq8pmanh@gmail.com', 'F', TO_DATE('1993-12-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ADMIN"."KHACHHANG" VALUES ('2', 'Đoàn Văn Lam Sơn', 'sondvl', '123', '01225037724', '1183/65 phạm thế hiển', 'kiemtheq8pmanh@gmail.com', 'F', TO_DATE('1993-12-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ADMIN"."KHACHHANG" VALUES ('21', 'AAAA', 'asa', '123', '0987654321', 'dsad a sasd as', 'dad@dsadas', 'F', TO_DATE('1995-03-17 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for LOAISP
-- ----------------------------
DROP TABLE "ADMIN"."LOAISP";
CREATE TABLE "ADMIN"."LOAISP" (
  "MA_LOAISP" NUMBER NOT NULL ,
  "TENLOAI" NVARCHAR2(20) ,
  "URL" VARCHAR2(100 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "LOAISP"
-- ----------------------------
INSERT INTO "ADMIN"."LOAISP" VALUES ('1', 'Bánh ngọt', 'banh-ngot');
INSERT INTO "ADMIN"."LOAISP" VALUES ('2', 'Pizaa', 'pizaa');
INSERT INTO "ADMIN"."LOAISP" VALUES ('3', 'Đồ ăn nhẹ', 'do-an-nhe');
INSERT INTO "ADMIN"."LOAISP" VALUES ('4', 'Bánh kem', 'banh-kem');
INSERT INTO "ADMIN"."LOAISP" VALUES ('5', 'Sandwich', 'sandwich');

-- ----------------------------
-- Table structure for NHANVIEN
-- ----------------------------
DROP TABLE "ADMIN"."NHANVIEN";
CREATE TABLE "ADMIN"."NHANVIEN" (
  "MA_NHANVIEN" NUMBER NOT NULL ,
  "MA_QUYEN" NUMBER NOT NULL ,
  "TENDANGNHAPNV" VARCHAR2(30 BYTE) ,
  "MATKHAUNV" VARCHAR2(30 BYTE) ,
  "ANHDAIDIEN" VARCHAR2(30 BYTE) ,
  "EMAIL" VARCHAR2(30 BYTE) ,
  "TENNHANVIEN" NVARCHAR2(100) ,
  "NGAYSINH" DATE ,
  "PHAI" CHAR(1 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "NHANVIEN"
-- ----------------------------
INSERT INTO "ADMIN"."NHANVIEN" VALUES ('1', '2', 'kelkelkel1994', '123', NULL, 'minhducit1993@gmail.com', 'Trần Minh Đức', TO_DATE('1993-12-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'F');
INSERT INTO "ADMIN"."NHANVIEN" VALUES ('2', '1', 'admin', '123', NULL, 'minhducit1993@gmail.com', 'Lương Trần Hy Hiến', TO_DATE('1993-12-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'M');
INSERT INTO "ADMIN"."NHANVIEN" VALUES ('3', '2', 'sondoan1204', '123', NULL, 'sondoan1204@gmail.com', 'Đoàn Văn Lam Sơn', TO_DATE('1993-12-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'F');

-- ----------------------------
-- Table structure for QUYEN
-- ----------------------------
DROP TABLE "ADMIN"."QUYEN";
CREATE TABLE "ADMIN"."QUYEN" (
  "MA_QUYEN" NUMBER NOT NULL ,
  "TENQUYEN" NVARCHAR2(100) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "QUYEN"
-- ----------------------------
INSERT INTO "ADMIN"."QUYEN" VALUES ('1', 'admin');
INSERT INTO "ADMIN"."QUYEN" VALUES ('2', 'nhanvien');

-- ----------------------------
-- Table structure for SANPHAM
-- ----------------------------
DROP TABLE "ADMIN"."SANPHAM";
CREATE TABLE "ADMIN"."SANPHAM" (
  "MA_SANPHAM" NUMBER NOT NULL ,
  "MA_LOAISP" NUMBER NOT NULL ,
  "TENSANPHAM" NVARCHAR2(100) ,
  "GIABAN" NUMBER ,
  "GIAKM" NUMBER ,
  "MOTASP" NCLOB ,
  "ANHSANPHAM" VARCHAR2(100 BYTE) ,
  "TRANGTHAIKM" VARCHAR2(1 BYTE) ,
  "TRANGTHAIHOT" VARCHAR2(1 BYTE) ,
  "TRANGTHAITOPWEEK" VARCHAR2(1 BYTE) ,
  "NGAYTAOSP" DATE ,
  "URL" VARCHAR2(100 BYTE) ,
  "TRANGTHAIBAN" VARCHAR2(1 BYTE) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "SANPHAM"
-- ----------------------------
INSERT INTO "ADMIN"."SANPHAM" VALUES ('61', '1', 'DRDRFGG GG GY', '12345678', '123', '<p>&#272;&#7900; FAC9 S</p>

<p>ADDA</p>

<p>DASDASDASDASD</p>
', 'post-52597-1160595569.ico', 'N', 'N', 'N', TO_DATE('2017-08-19 15:50:48', 'SYYYY-MM-DD HH24:MI:SS'), 'drdrfgg-gg-gy', 'N');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('62', '1', 'sơn 1234G HHHH ', '3213', '1', '<p>ĐỜ Á A2H Á ĐỜ</p>
', '2016-07-28.png', 'N', 'N', 'N', TO_DATE('2017-08-19 15:54:49', 'SYYYY-MM-DD HH24:MI:SS'), 'son-1234g-hhhh-', 'N');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('63', '1', 'sonnnnnnnnnnnnnnnnnnnnnnn', '1111111111111', '111', '<p>mô ta 3 saan pham</p>
', '2016-07-26 (2).png', 'N', 'N', 'N', TO_DATE('2017-08-19 19:10:42', 'SYYYY-MM-DD HH24:MI:SS'), 'sonnnnnnnnnnnnnnnnnnnnnnn', 'N');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('43', '1', 'aaa sơn đoàn dsad', '2313123', '123', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'dsadassadasdad.jpg', 'Y', 'Y', 'Y', TO_DATE('2017-08-13 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'aaa-son-doan-dsad', 'N');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('1', '2', 'PIZZA NHÂN BÒ PHÔ MAI', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3QnVrcDcwNHBPMTA', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-nhan-bo-pho-mai', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('2', '2', 'PIZZA GÀ HẢI SẢN', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3WVBqUDM5dWFTcHc', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-ga-hai-san', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('3', '2', 'PIZZA GÀ ỚT XANH', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3WmFjdXJtcThQemM', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-ga-ot-xanh', 'N');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('4', '4', 'BÁNH MỨT KEM', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3dEo3MGxSM2NWWGs', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-mut-kem', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('5', '5', 'BÁNH KEM BẠC HÀ', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3WXlyeTczZ01femc', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-kem-bac-ha', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('6', '5', 'BÁNH KEM VANI DÂU', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B7mgEjbAZEQ5azRKVHM2Q3hIZUU', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-kem-vani-dau', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('7', '4', 'BÁNH NGỌT', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3a3dZZDBFNk4tcUk', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-ngot', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('8', '4', 'MOCHI KEM TƯƠI', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3Y0NhZERGTW85UGM', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'mochi-kem-tuoi', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('9', '4', 'CHOCOLATE NHÂN KEM', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3QlJCUkpSenhZSzA', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'chocolate-nhan-kem', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('10', '4', 'CAKE WEET', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3eFV3dzg4cTdVeWs', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'cake-weet', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('11', '4', 'CUPCAKE BẠC HÀ', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3ZU5WUGpla21jVU0', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'cupcake-bac-ha', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('12', '4', 'CUPCAKE CHOCOLATE', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3WjNQdTJRdTJ0ZHM', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'cupcake-chocolate', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('13', '4', 'BÁNH VANI', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3OVphWC1wb0VrZm8', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-vani', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('14', '4', 'CUPCAKE VANI DÂU', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3X2EtVFVBaVFxTTg', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'cupcake-vani-dau', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('15', '1', 'BÁNH HAMBURGER', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3NG1ieUJlQ2hnQ0U', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-hamburger', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('16', '2', 'PIZZA ZĂM BÔNG', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3NFV5d011a1lONEE', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-zam-bong', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('17', '2', 'PIZZA XÚC XÍCH THẬP CẨM', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3VzBNR08zdW1lSEk', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-xuc-xich-thap-cam', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('18', '2', 'PIZZA HẢI SẢN', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3RlF5RVJBRUhDZkk', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-hai-san', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('19', '2', 'PIZZA THỊT HUN KHÓI', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3WTF6cjFiemF3X1U', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'pizza-thit-hun-khoi', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('20', '3', 'BÁNH TORRIJA', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3Ym5UQnNhMl95dmM', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-torrija', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('21', '1', 'SANDWICH TRỨNG', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3Q1lRTmFYUHFFeTQ', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'sandwich-trung', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('22', '1', 'SANDWICH SADLAT', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3TW1kNk85T2RIYUE', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'sandwich-sadlat', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('23', '1', 'SANDWICH SADLAT THỊT BÒ', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3SzZfQ0VBaHZqTkU', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'sandwich-sadlat-thit-bo', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('24', '1', 'SANDWICH TRỨNG SỮA', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B2xIzP693TX3cEFsZFd2Y0RuV00', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'sandwich-trung-sua', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('25', '1', 'banh mì sandwich', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'https://drive.google.com/uc?id=0B4jrhIC7OaTiTXozR2VlRDhxVkU', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-mi-sandwich', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('26', '1', 'banh sandwich', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'Big-Hero-6-Animated-2015-Movie-HD-Wallpaper.jpg', 'Y', 'Y', 'Y', TO_DATE('2017-08-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-sandwich', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('56', '1', 'banh sandwich 111', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', '1920x1080.jpg', 'Y', 'Y', 'Y', TO_DATE('2017-08-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'banh-sandwich-111', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('57', '2', 'chưa biết', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'dasdsa.jpg', 'Y', 'Y', 'N', TO_DATE('2017-08-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'chua-biet', 'Y');
INSERT INTO "ADMIN"."SANPHAM" VALUES ('58', '1', 'ababababab', '300000', '20000', 'Mô tả 20 ký tụ,,,, mô tả hơn 20 ký tự kakakak', 'Big-Hero-6-Wallpaper-big-hero-6-37679026-1280-720.png', 'Y', 'Y', 'N', TO_DATE('2017-08-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS'), 'ababababab', 'Y');

-- ----------------------------
-- Table structure for TAG
-- ----------------------------
DROP TABLE "ADMIN"."TAG";
CREATE TABLE "ADMIN"."TAG" (
  "MA_TAG" NUMBER NOT NULL ,
  "TENTAG" NVARCHAR2(20) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "TAG"
-- ----------------------------
INSERT INTO "ADMIN"."TAG" VALUES ('1', 'phômai');
INSERT INTO "ADMIN"."TAG" VALUES ('2', 'pizza');
INSERT INTO "ADMIN"."TAG" VALUES ('3', 'bò');

-- ----------------------------
-- Table structure for THONGTINWEBSITE
-- ----------------------------
DROP TABLE "ADMIN"."THONGTINWEBSITE";
CREATE TABLE "ADMIN"."THONGTINWEBSITE" (
  "MA_THONGTIN" NUMBER NOT NULL ,
  "LOGO" VARCHAR2(100 BYTE) ,
  "HOTLINE" VARCHAR2(15 BYTE) ,
  "FACEBOOK" NVARCHAR2(100) ,
  "LINK_FACEBOOK" VARCHAR2(100 BYTE) ,
  "THOIGIANMOCUA" VARCHAR2(100 BYTE) ,
  "DIACHI" NVARCHAR2(100) ,
  "EMAIL" VARCHAR2(30 BYTE) ,
  "TENWEBSITE" NVARCHAR2(100) ,
  "MOTATRANGWEB" NVARCHAR2(100) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "THONGTINWEBSITE"
-- ----------------------------
INSERT INTO "ADMIN"."THONGTINWEBSITE" VALUES ('1', 'logo.png', '08-1800-1090', 'Voi Ăn Gà', 'https://www.facebook.com/minhduc.271293', '7:00 am - 10:00 pm', '475A Điện Biên Phủ - Phường 25 - Quận Bình Thạnh - Tp Hồ Chí Mính', 'sandwich@chianui.com', 'Sandwich Chía Núi', 'Sandwich Chía Núi.');

-- ----------------------------
-- Table structure for TRANGTHAIDDH
-- ----------------------------
DROP TABLE "ADMIN"."TRANGTHAIDDH";
CREATE TABLE "ADMIN"."TRANGTHAIDDH" (
  "MA_TTDDH" NUMBER NOT NULL ,
  "TENTRANGTHAI" NVARCHAR2(100) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "TRANGTHAIDDH"
-- ----------------------------
INSERT INTO "ADMIN"."TRANGTHAIDDH" VALUES ('1', 'Đang chờ xác nhận');
INSERT INTO "ADMIN"."TRANGTHAIDDH" VALUES ('2', 'Đã xác nhận ');
INSERT INTO "ADMIN"."TRANGTHAIDDH" VALUES ('3', 'Đang giao hàng');
INSERT INTO "ADMIN"."TRANGTHAIDDH" VALUES ('4', 'Giao hàng thành công');
INSERT INTO "ADMIN"."TRANGTHAIDDH" VALUES ('5', 'Hủy đơn hàng');

-- ----------------------------
-- Table structure for TRANGTHAIHD
-- ----------------------------
DROP TABLE "ADMIN"."TRANGTHAIHD";
CREATE TABLE "ADMIN"."TRANGTHAIHD" (
  "MA_TTHD" NUMBER NOT NULL ,
  "TENTTHD" NVARCHAR2(100) 
)
TABLESPACE "USERS"
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of "TRANGTHAIHD"
-- ----------------------------
INSERT INTO "ADMIN"."TRANGTHAIHD" VALUES ('1', 'Đã xuất hóa đơn');
INSERT INTO "ADMIN"."TRANGTHAIHD" VALUES ('2', 'Đã giao hóa đơn');
INSERT INTO "ADMIN"."TRANGTHAIHD" VALUES ('3', 'Giao hóa đơn thành công');

-- ----------------------------
-- Function structure for DS_5DONHANG_MOI
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."DS_5DONHANG_MOI" AS
BEGIN
        FOR item IN (SELECT * FROM(SELECT
                    ADMIN .DONDATHANG.MA_DONDATHANG,
                    ADMIN .KHACHHANG.TENKHACHHANG,
                    ADMIN .DONDATHANG.TONGTG,
                    ADMIN .DONDATHANG.NGAYTAODDH
                FROM
                    ADMIN .DONDATHANG
                INNER JOIN ADMIN .NHANVIEN ON ADMIN .DONDATHANG.MA_NHANVIEN = ADMIN .NHANVIEN.MA_NHANVIEN
                INNER JOIN ADMIN .KHACHHANG ON ADMIN .DONDATHANG.MA_KHACHHANG = ADMIN .KHACHHANG.MA_KHACHHANG
                ORDER BY
                    ADMIN .DONDATHANG.NGAYTAODDH DESC)
                    WHERE ROWNUM <=5 )
        LOOP
        fn_DH.extend;
        fn_DH(fn_DH.Last) := obj_DanhSachDH(    item.MA_DONDATHANG, 
                                                item.TENKHACHHANG,
                                                item.TONGTG,
                                                item.NGAYTAODDH
                                            );
        END LOOP;                                                                                       
RETURN fn_DH;
END;
/

-- ----------------------------
-- Function structure for FN_CONVERT_TO_VN
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."FN_CONVERT_TO_VN" AS
BEGIN
	STRCONVERT := TRANSLATE( STRINPUT, 'áàảãạăắằẳẵặâấầẩẫậđéèẻẽẹêếềểễệíìỉĩịóòỏõọôốồổỗộơớờởỡợúùủũụưứừửữựýỳỷỹỵÁÀẢÃẠĂẮẰẲẴẶÂẤẦẨẪẬĐÉÈẺẼẸÊẾỀỂỄỆÍÌỈĨỊÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢÚÙỦŨỤƯỨỪỬỮỰÝỲỶỸỴ QWERTYUIOPASDFGHJKLZXCVBNM', 'aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyyaaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy-qwertyuiopasdfghjklzxcvbnm' );
RETURN STRCONVERT;
END;
/

-- ----------------------------
-- Function structure for GET_AGE
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_AGE" AS
BEGIN
AGEGET:=TRUNC((SYSDATE - TO_DATE(DATEPUT))/ 365.25);
RETURN AGEGET;
END;
/

-- ----------------------------
-- Function structure for GET_DAY
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_DAY" AS
BEGIN
DATEGET:=Extract(DAY from DATEPUT);
RETURN DATEGET;
END;
/

-- ----------------------------
-- Function structure for GET_KH_ORDER
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_KH_ORDER" AS
BEGIN
    SELECT
    COUNT(DISTINCT ADMIN.DONDATHANG.MA_KHACHHANG)INTO KH
    FROM
    ADMIN.DONDATHANG;
RETURN KH;
END;
/

-- ----------------------------
-- Function structure for GET_MONTH
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_MONTH" AS
BEGIN
DATEGET:=Extract(MONTH from DATEPUT);
RETURN DATEGET;
END;
/

-- ----------------------------
-- Function structure for GET_PRICE
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_PRICE" AS
BEGIN
    SELECT TRANGTHAIKM INTO ST FROM SANPHAM WHERE SANPHAM.MA_SANPHAM=ID;
    SELECT GIABAN INTO P1 FROM SANPHAM WHERE SANPHAM.MA_SANPHAM=ID;
    SELECT GIAKM INTO P2 FROM SANPHAM WHERE SANPHAM.MA_SANPHAM=ID;
    IF
        ST='N'
    THEN     
        PRICE := P1;
    ELSE
        PRICE := P2;
    END IF;
RETURN PRICE;
END;
/

-- ----------------------------
-- Function structure for GET_SLHANGBAN
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_SLHANGBAN" AS
BEGIN
SELECT
Sum(ADMIN.CHITIETDDH.MA_SANPHAM)INTO SL
FROM
ADMIN.CHITIETDDH;
RETURN SL;
END;
/

-- ----------------------------
-- Function structure for GET_SL_DH
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_SL_DH" AS
BEGIN
    SELECT
    COUNT(ADMIN.DONDATHANG.MA_DONDATHANG)INTO DH
    FROM
    ADMIN.DONDATHANG;
RETURN DH;
END;
/

-- ----------------------------
-- Function structure for GET_SL_SP
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_SL_SP" AS
BEGIN
    SELECT
    COUNT(ADMIN.SANPHAM.MA_SANPHAM)INTO SP
    FROM
    ADMIN.SANPHAM;
RETURN SP;
END;
/

-- ----------------------------
-- Function structure for GET_TTG_DDH
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_TTG_DDH" AS
BEGIN
    SELECT
    SUM(ADMIN.DONDATHANG.TONGTG) INTO TTG
    FROM
    ADMIN.DONDATHANG;
RETURN TTG;
END;
/

-- ----------------------------
-- Function structure for GET_YEAR
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."GET_YEAR" AS
BEGIN
DATEGET:=Extract(YEAR from DATEPUT);
RETURN DATEGET;
END;
/

-- ----------------------------
-- Function structure for NHAP_LOAISP
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."NHAP_LOAISP" AS
begin
    begin
        Insert into LOAISP (TENLOAI) values (name)
        RETURNING MA_LOAISP INTO RS;
        Exception WHEN DUP_VAL_ON_INDEX THEN RS:=1;
    END;
return RS;
end Nhap_LoaiSp;
/

-- ----------------------------
-- Function structure for NHAP_SANPHAM
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."NHAP_SANPHAM" AS
begin
    begin
        INSERT INTO SANPHAM (MA_LOAISP, TENSANPHAM, GIABAN, GIAKM, MOTASP, ANHSANPHAM, TRANGTHAIKM, TRANGTHAIHOT, TRANGTHAITOPWEEK, TRANGTHAIBAN) VALUES (maloai, name, giaban, giakm, mota, anh, thkm, thhot, thtuan, thban);
        Exception WHEN DUP_VAL_ON_INDEX THEN RS:=1;
    END;
return RS;
end Nhap_SanPham;
/

-- ----------------------------
-- Function structure for PROC_CHITIET_DDH
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_CHITIET_DDH" AS
begin
    OPEN recordset for
    SELECT *
	FROM
		DONDATHANG
	WHERE
		MA_DONDATHANG = X;
end;
/

-- ----------------------------
-- Function structure for PROC_DANGNHAP_NV
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DANGNHAP_NV" AS
begin
    OPEN recordset for
    SELECT *
	FROM
		NHANVIEN
	WHERE
		TENDANGNHAPNV = TENDN AND MATKHAUNV= PASS;
end;
/

-- ----------------------------
-- Function structure for PROC_DS6SP_BANCHAY
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DS6SP_BANCHAY" AS
begin
    OPEN recordset for
               SELECT
            * 
        FROM
            (
        SELECT
            ADMIN.CHITIETDDH.MA_SANPHAM,
            ADMIN.SANPHAM.TENSANPHAM,
            ADMIN.LOAISP.TENLOAI,
            ADMIN.SANPHAM.ANHSANPHAM,
            Sum( ADMIN.CHITIETDDH.SOLUONG ) AS SOLUONG,
            Sum( ADMIN.CHITIETDDH.THANHTIEN ) AS THANHTIEN 
        FROM
            ADMIN.CHITIETDDH
            INNER JOIN ADMIN.SANPHAM ON ADMIN.CHITIETDDH.MA_SANPHAM = ADMIN.SANPHAM.MA_SANPHAM
            INNER JOIN ADMIN.LOAISP ON ADMIN.SANPHAM.MA_LOAISP = ADMIN.LOAISP.MA_LOAISP 
        GROUP BY
            ADMIN.CHITIETDDH.MA_SANPHAM,
            ADMIN.SANPHAM.TENSANPHAM,
            ADMIN.LOAISP.TENLOAI,
            ADMIN.SANPHAM.ANHSANPHAM 
        ORDER BY
            SOLUONG DESC 
            ) 
        WHERE
            ROWNUM <=6;
end;
/

-- ----------------------------
-- Function structure for PROC_DSSP_KHONGBAN
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DSSP_KHONGBAN" AS
begin
            OPEN recordset for
                SELECT *
                FROM
                ADMIN.SANPHAM
                WHERE
                MA_LOAISP = X AND
                ADMIN.SANPHAM.TRANGTHAIBAN = 'N';
end;
/

-- ----------------------------
-- Function structure for PROC_DSSP_LOAI
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DSSP_LOAI" AS
begin
    OPEN recordset for
    SELECT *
	FROM
		SANPHAM
	WHERE
		MA_LOAISP = X;
end;
/

-- ----------------------------
-- Function structure for PROC_DS_HOADON
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DS_HOADON" AS
begin
    OPEN recordset for
    SELECT *
	FROM
		HOADON
	WHERE
		MA_TTHD = X;
end;
/

-- ----------------------------
-- Function structure for PROC_DS_HOADON_NHANVIEN
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DS_HOADON_NHANVIEN" AS
begin
    OPEN recordset for
    SELECT *
	FROM
		HOADON
	WHERE
		 MA_NHANVIEN=Y;
end;
/

-- ----------------------------
-- Function structure for PROC_DS_ITEM_DH
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_DS_ITEM_DH" AS
begin
    OPEN recordset for
    SELECT *
	FROM
		CHITIETDDH
	WHERE
		MA_DONDATHANG = X;
end;
/

-- ----------------------------
-- Function structure for PROC_KHOIPHUCSP
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_KHOIPHUCSP" AS
begin
    UPDATE SANPHAM SET TRANGTHAIBAN = 'Y' WHERE MA_SANPHAM=MA;
    COMMIT;
end;
/

-- ----------------------------
-- Function structure for PROC_LAYSP_LOAITRUYENVAO
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_LAYSP_LOAITRUYENVAO" AS
begin
    OPEN recordset for
    SELECT
		ADMIN.SANPHAM.MA_SANPHAM,
		ADMIN.SANPHAM.TENSANPHAM
	FROM
		ADMIN.LOAISP
		INNER JOIN ADMIN.SANPHAM ON ADMIN.SANPHAM.MA_LOAISP = ADMIN.LOAISP.MA_LOAISP
	WHERE
		ADMIN.LOAISP.URL = X;
end;
/

-- ----------------------------
-- Function structure for PROC_SETDDH
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_SETDDH" AS
begin
    UPDATE DONDATHANG SET MA_TTDDH = MATT WHERE MA_DONDATHANG=MADH;
    COMMIT;
end;
/

-- ----------------------------
-- Function structure for PROC_THONGKE_LOAI
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_THONGKE_LOAI" AS
begin
    OPEN recordset for
    SELECT
        ADMIN.LOAISP.TENLOAI,
        Count(ADMIN.SANPHAM.MA_SANPHAM)
        FROM
        ADMIN.SANPHAM
        INNER JOIN ADMIN.LOAISP ON ADMIN.SANPHAM.MA_LOAISP = ADMIN.LOAISP.MA_LOAISP
        GROUP BY
        ADMIN.LOAISP.TENLOAI;
end;
/

-- ----------------------------
-- Function structure for PROC_TIM_DDH
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_TIM_DDH" AS
begin
    OPEN recordset for
        SELECT *
    FROM
        DONDATHANG
    WHERE
        MA_DONDATHANG=X;
end;
/

-- ----------------------------
-- Function structure for PROC_TIM_SP
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_TIM_SP" AS
begin
    OPEN recordset for
        SELECT *
    FROM
    ADMIN.SANPHAM
    WHERE
    UPPER(ADMIN.SANPHAM.TENSANPHAM) LIKE '%'||UPPER(X)||'%';
end;
/

-- ----------------------------
-- Function structure for PROC_TK_HD_NV
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_TK_HD_NV" AS
begin
    OPEN recordset for
   SELECT
Count(ADMIN.DONDATHANG.MA_DONDATHANG),
ADMIN.NHANVIEN.TENNHANVIEN
FROM
ADMIN.DONDATHANG
INNER JOIN ADMIN.NHANVIEN ON ADMIN.DONDATHANG.MA_NHANVIEN = ADMIN.NHANVIEN.MA_NHANVIEN

GROUP BY
ADMIN.NHANVIEN.TENNHANVIEN;
end;
/

-- ----------------------------
-- Function structure for PROC_XOASP
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."PROC_XOASP" AS
begin
    UPDATE SANPHAM SET TRANGTHAIBAN = 'N' WHERE MA_SANPHAM=MA;
    COMMIT;
end;
/

-- ----------------------------
-- Function structure for Proc_LaySP_LoaiTruyenVao
-- ----------------------------
CREATE OR REPLACE
PROCEDURE "ADMIN"."Proc_LaySP_LoaiTruyenVao" AS
begin
    OPEN recordset for
    SELECT
		ADMIN.SANPHAM.MA_SANPHAM,
		ADMIN.SANPHAM.TENSANPHAM,
		ADMIN.SANPHAM.GIABAN,
		ADMIN.SANPHAM.GIAKM,
		ADMIN.SANPHAM.ANHSANPHAM,
		ADMIN.SANPHAM.TRANGTHAIKM,
		ADMIN.SANPHAM.URL,
		ADMIN.SANPHAM.TRANGTHAIBAN
	FROM
		ADMIN.LOAISP
		INNER JOIN ADMIN.SANPHAM ON ADMIN.SANPHAM.MA_LOAISP = ADMIN.LOAISP.MA_LOAISP
	WHERE
		ADMIN.LOAISP.URL = X;
  end;
/

-- ----------------------------
-- Function structure for SP_THEO_URL
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."SP_THEO_URL" AS
BEGIN
    IF (URLPUT IS NULL)
        THEN
        FOR item IN (SELECT
                        ADMIN.SANPHAM.MA_SANPHAM,
                        ADMIN.SANPHAM.MA_LOAISP,
                        ADMIN.SANPHAM.TENSANPHAM,
                        ADMIN.SANPHAM.GIABAN,
                        ADMIN.SANPHAM.GIAKM,
                        ADMIN.SANPHAM.MOTASP,
                        ADMIN.SANPHAM.ANHSANPHAM,
                        ADMIN.SANPHAM.TRANGTHAIKM,
                        ADMIN.SANPHAM.TRANGTHAIHOT,
                        ADMIN.SANPHAM.TRANGTHAITOPWEEK,
                        ADMIN.SANPHAM.NGAYTAOSP,
                        ADMIN.SANPHAM.URL,
                        ADMIN.SANPHAM.TRANGTHAIBAN
                        FROM
                        ADMIN.SANPHAM
                        )
        LOOP
        fn_SP.extend;
        fn_SP(fn_SP.Last) := obj_DanhSachSP(    item.MA_SANPHAM, 
                                                item.MA_LOAISP,
                                                item.TENSANPHAM,
                                                item.GIABAN,
                                                item.GIAKM,
                                                item.MOTASP,
                                                item.ANHSANPHAM,
                                                item.TRANGTHAIKM,
                                                item.TRANGTHAIHOT,
                                                item.TRANGTHAITOPWEEK,
                                                item.NGAYTAOSP,
                                                item.URL,
                                                item.TRANGTHAIBAN
                                               );
        END LOOP;
        ELSE
        FOR item IN (SELECT
                    ADMIN.SANPHAM.MA_SANPHAM,
                    ADMIN.SANPHAM.MA_LOAISP,
                    ADMIN.SANPHAM.TENSANPHAM,
                    ADMIN.SANPHAM.GIABAN,
                    ADMIN.SANPHAM.GIAKM,
                    ADMIN.SANPHAM.MOTASP,
                    ADMIN.SANPHAM.ANHSANPHAM,
                    ADMIN.SANPHAM.TRANGTHAIKM,
                    ADMIN.SANPHAM.TRANGTHAIHOT,
                    ADMIN.SANPHAM.TRANGTHAITOPWEEK,
                    ADMIN.SANPHAM.NGAYTAOSP,
                    ADMIN.SANPHAM.URL,
                    ADMIN.SANPHAM.TRANGTHAIBAN
                    FROM
                    ADMIN.SANPHAM
                    INNER JOIN ADMIN.LOAISP ON ADMIN.SANPHAM.MA_LOAISP = ADMIN.LOAISP.MA_LOAISP
                    WHERE
                    ADMIN.LOAISP.URL=URLPUT)
        LOOP
        fn_SP.extend;
        fn_SP(fn_SP.Last) := obj_DanhSachSP(    item.MA_SANPHAM, 
                                                item.MA_LOAISP,
                                                item.TENSANPHAM,
                                                item.GIABAN,
                                                item.GIAKM,
                                                item.MOTASP,
                                                item.ANHSANPHAM,
                                                item.TRANGTHAIKM,
                                                item.TRANGTHAIHOT,
                                                item.TRANGTHAITOPWEEK,
                                                item.NGAYTAOSP,
                                                item.URL,
                                                item.TRANGTHAIBAN
                                               );
        END LOOP;                                                                                       
    END IF;
RETURN fn_SP;
END;
/

-- ----------------------------
-- Function structure for SUA_LOAISP
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."SUA_LOAISP" AS
begin
    begin
        UPDATE LOAISP SET TENLOAI = name WHERE MA_LOAISP=idsp;
        Exception WHEN DUP_VAL_ON_INDEX THEN RS:=1;
    END;
return RS;
end Sua_LoaiSp;
/

-- ----------------------------
-- Function structure for SUA_SANPHAM
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."SUA_SANPHAM" AS
begin
    begin
        UPDATE SANPHAM SET
        MA_LOAISP=maloai, TENSANPHAM = name, GIABAN=giaban, GIAKM=giakm, MOTASP=mota, ANHSANPHAM=anh, TRANGTHAIKM=thkm, TRANGTHAIHOT=thhot, TRANGTHAITOPWEEK=thtuan, TRANGTHAIBAN =thban
        WHERE MA_SANPHAM=masp;
        Exception WHEN DUP_VAL_ON_INDEX THEN RS:=1;
    END;
return RS;
end Sua_SanPham;
/

-- ----------------------------
-- Function structure for XUAT_HOADON
-- ----------------------------
CREATE OR REPLACE
FUNCTION "ADMIN"."XUAT_HOADON" AS
begin
    begin
    INSERT INTO "ADMIN"."HOADON" (MA_DONDATHANG, MA_NHANVIEN, MA_TTHD, NGAYGIAOHD, GHICHUHD, MST, TENCONGTY, DIACHICONTY) VALUES (MADDH, MANV, '1', NGAYGIAO, GHICHU, MSOTHUE, TENCT, DIACHI);
    Exception WHEN DUP_VAL_ON_INDEX THEN RS:=1;
    END;
return RS;
end XUAT_HOADON;
/

-- ----------------------------
-- Sequence structure for DONDATHANG_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."DONDATHANG_SEQ";
CREATE SEQUENCE "ADMIN"."DONDATHANG_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for HOADON_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."HOADON_SEQ";
CREATE SEQUENCE "ADMIN"."HOADON_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for KHACHHANG_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."KHACHHANG_SEQ";
CREATE SEQUENCE "ADMIN"."KHACHHANG_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for LOAISP_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."LOAISP_SEQ";
CREATE SEQUENCE "ADMIN"."LOAISP_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for NHANVIEN_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."NHANVIEN_SEQ";
CREATE SEQUENCE "ADMIN"."NHANVIEN_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for QUYEN_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."QUYEN_SEQ";
CREATE SEQUENCE "ADMIN"."QUYEN_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SANPHAM_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."SANPHAM_SEQ";
CREATE SEQUENCE "ADMIN"."SANPHAM_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SEQUENCE_AUTOID
-- ----------------------------
DROP SEQUENCE "ADMIN"."SEQUENCE_AUTOID";
CREATE SEQUENCE "ADMIN"."SEQUENCE_AUTOID" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for TAG_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."TAG_SEQ";
CREATE SEQUENCE "ADMIN"."TAG_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for TRANGTHAIDDH_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."TRANGTHAIDDH_SEQ";
CREATE SEQUENCE "ADMIN"."TRANGTHAIDDH_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for TRANGTHAIHD_SEQ
-- ----------------------------
DROP SEQUENCE "ADMIN"."TRANGTHAIHD_SEQ";
CREATE SEQUENCE "ADMIN"."TRANGTHAIHD_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table CHITIETDDH
-- ----------------------------
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011149" PRIMARY KEY ("MA_SANPHAM", "MA_DONDATHANG");

-- ----------------------------
-- Checks structure for table CHITIETDDH
-- ----------------------------
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011144" CHECK ("MA_SANPHAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011145" CHECK ("MA_DONDATHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011146" CHECK ("MA_SANPHAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011147" CHECK ("MA_DONDATHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011148" CHECK (SOLUONG >0) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table CHITIETDDH
-- ----------------------------
CREATE TRIGGER "ADMIN"."CTHD_ADDPRICE" BEFORE INSERT ON "ADMIN"."CHITIETDDH" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :NEW.GIAKHMUA:= GET_PRICE(:NEW.MA_SANPHAM);
END;
/
CREATE TRIGGER "ADMIN"."CTHD_AUTOUPDATE" BEFORE INSERT OR UPDATE ON "ADMIN"."CHITIETDDH" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
:new.THANHTIEN := :new.GIAKHMUA * :new.SOLUONG;
END;
/

-- ----------------------------
-- Primary Key structure for table CHITIETTAG
-- ----------------------------
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011173" PRIMARY KEY ("MA_TAG", "MA_SANPHAM");

-- ----------------------------
-- Checks structure for table CHITIETTAG
-- ----------------------------
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011169" CHECK ("MA_TAG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011170" CHECK ("MA_SANPHAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011171" CHECK ("MA_TAG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011172" CHECK ("MA_SANPHAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table DONDATHANG
-- ----------------------------
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011182" PRIMARY KEY ("MA_DONDATHANG");

-- ----------------------------
-- Checks structure for table DONDATHANG
-- ----------------------------
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011174" CHECK ("MA_DONDATHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011175" CHECK ("MA_NHANVIEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011176" CHECK ("MA_KHACHHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011177" CHECK ("MA_TTDDH" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011178" CHECK ("MA_DONDATHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011179" CHECK ("MA_NHANVIEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011180" CHECK ("MA_KHACHHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011181" CHECK ("MA_TTDDH" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table DONDATHANG
-- ----------------------------
CREATE TRIGGER "ADMIN"."DONDATHANG_TRG" BEFORE INSERT ON "ADMIN"."DONDATHANG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_DONDATHANG IS NULL THEN
      SELECT DONDATHANG_SEQ.NEXTVAL INTO :NEW.MA_DONDATHANG FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
CREATE TRIGGER "ADMIN"."DONDATHANG_TRG_NGAYTAO" BEFORE INSERT ON "ADMIN"."DONDATHANG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :NEW.NGAYTAODDH := SYSDATE;
END;
/

-- ----------------------------
-- Primary Key structure for table HOADON
-- ----------------------------
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011130" PRIMARY KEY ("MA_HOADON");

-- ----------------------------
-- Uniques structure for table HOADON
-- ----------------------------
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011271" UNIQUE ("MA_DONDATHANG") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table HOADON
-- ----------------------------
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011122" CHECK ("MA_HOADON" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011123" CHECK ("MA_DONDATHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011124" CHECK ("MA_NHANVIEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011125" CHECK ("MA_TTHD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011126" CHECK ("MA_HOADON" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011127" CHECK ("MA_DONDATHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011128" CHECK ("MA_NHANVIEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011129" CHECK ("MA_TTHD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table HOADON
-- ----------------------------
CREATE TRIGGER "ADMIN"."HOADON_TRG" BEFORE INSERT ON "ADMIN"."HOADON" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_HOADON IS NULL THEN
      SELECT HOADON_SEQ.NEXTVAL INTO :NEW.MA_HOADON FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
CREATE TRIGGER "ADMIN"."HOADON_TRG_NGAYGIAOHD" BEFORE INSERT ON "ADMIN"."HOADON" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF
      :NEW.NGAYGIAOHD<SYSDATE
    THEN
        RAISE_APPLICATION_ERROR (-20007, 'LOI! NGÀY GIAO >= NGAY HIỆN TẠI');
    END IF;
END;
/
CREATE TRIGGER "ADMIN"."HOADON_TRG_NGAYTAO" BEFORE INSERT ON "ADMIN"."HOADON" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :NEW.NGAYTAOHD := SYSDATE;
END;
/

-- ----------------------------
-- Primary Key structure for table KHACHHANG
-- ----------------------------
ALTER TABLE "ADMIN"."KHACHHANG" ADD CONSTRAINT "SYS_C0011168" PRIMARY KEY ("MA_KHACHHANG");

-- ----------------------------
-- Checks structure for table KHACHHANG
-- ----------------------------
ALTER TABLE "ADMIN"."KHACHHANG" ADD CONSTRAINT "SYS_C0011165" CHECK ("MA_KHACHHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."KHACHHANG" ADD CONSTRAINT "SYS_C0011166" CHECK ("MA_KHACHHANG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."KHACHHANG" ADD CONSTRAINT "SYS_C0011167" CHECK (DIENTHOAI in
	(
	  '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]',
	  '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]',
	  '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ,
  	'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]',
	  NULL
	) ) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table KHACHHANG
-- ----------------------------
CREATE TRIGGER "ADMIN"."CHECK_EMAIL_KHACHHANG" BEFORE INSERT OR UPDATE OF "EMAIL" ON "ADMIN"."KHACHHANG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF 
    REGEXP_COUNT (:NEW.EMAIL, '@') != 1
    THEN
    RAISE_APPLICATION_ERROR (-20001, 'LỖI! EMAIL PHẢI ĐÚNG ĐỊNH DẠNG');
    END IF;
END;
/
CREATE TRIGGER "ADMIN"."KHACHHANG_TRG" BEFORE INSERT ON "ADMIN"."KHACHHANG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_KHACHHANG IS NULL THEN
      SELECT KHACHHANG_SEQ.NEXTVAL INTO :NEW.MA_KHACHHANG FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

-- ----------------------------
-- Primary Key structure for table LOAISP
-- ----------------------------
ALTER TABLE "ADMIN"."LOAISP" ADD CONSTRAINT "SYS_C0011156" PRIMARY KEY ("MA_LOAISP");

-- ----------------------------
-- Uniques structure for table LOAISP
-- ----------------------------
ALTER TABLE "ADMIN"."LOAISP" ADD CONSTRAINT "SYS_C0011154" UNIQUE ("TENLOAI") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table LOAISP
-- ----------------------------
ALTER TABLE "ADMIN"."LOAISP" ADD CONSTRAINT "SYS_C0011153" CHECK ("MA_LOAISP" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."LOAISP" ADD CONSTRAINT "SYS_C0011155" CHECK ("MA_LOAISP" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table LOAISP
-- ----------------------------
CREATE TRIGGER "ADMIN"."LOAISP_TRG" BEFORE INSERT ON "ADMIN"."LOAISP" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_LOAISP IS NULL THEN
      SELECT LOAISP_SEQ.NEXTVAL INTO :NEW.MA_LOAISP FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
CREATE TRIGGER "ADMIN"."LOAISP_TRG_URL" BEFORE INSERT OR UPDATE ON "ADMIN"."LOAISP" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :NEW.URL := FN_CONVERT_TO_VN(:NEW.TENLOAI);
END;
/

-- ----------------------------
-- Primary Key structure for table NHANVIEN
-- ----------------------------
ALTER TABLE "ADMIN"."NHANVIEN" ADD CONSTRAINT "SYS_C0011161" PRIMARY KEY ("MA_NHANVIEN");

-- ----------------------------
-- Checks structure for table NHANVIEN
-- ----------------------------
ALTER TABLE "ADMIN"."NHANVIEN" ADD CONSTRAINT "SYS_C0011157" CHECK ("MA_NHANVIEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."NHANVIEN" ADD CONSTRAINT "SYS_C0011158" CHECK ("MA_QUYEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."NHANVIEN" ADD CONSTRAINT "SYS_C0011159" CHECK ("MA_NHANVIEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."NHANVIEN" ADD CONSTRAINT "SYS_C0011160" CHECK ("MA_QUYEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table NHANVIEN
-- ----------------------------
CREATE TRIGGER "ADMIN"."CHECK_EMAIL_NHANVIEN" BEFORE INSERT OR UPDATE OF "EMAIL" ON "ADMIN"."NHANVIEN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF 
    REGEXP_COUNT (:NEW.EMAIL, '@') != 1
    THEN
    RAISE_APPLICATION_ERROR (-20002, 'LỖI! EMAIL PHẢI ĐÚNG ĐỊNH DẠNG');
    END IF;
END;
/
CREATE TRIGGER "ADMIN"."NHANVIEN_TRG" BEFORE INSERT ON "ADMIN"."NHANVIEN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_NHANVIEN IS NULL THEN
      SELECT NHANVIEN_SEQ.NEXTVAL INTO :NEW.MA_NHANVIEN FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
CREATE TRIGGER "ADMIN"."NHANVIEN_TUOI" BEFORE INSERT OR UPDATE OF "NGAYSINH" ON "ADMIN"."NHANVIEN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF
    GET_AGE(:NEW.NGAYSINH)<18 OR GET_AGE(:NEW.NGAYSINH)>60
    THEN
        RAISE_APPLICATION_ERROR (-20003, 'LOI! NHAP NGAY, TUOI PHAI TU 18 - 60');
    END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table QUYEN
-- ----------------------------
ALTER TABLE "ADMIN"."QUYEN" ADD CONSTRAINT "SYS_C0011188" PRIMARY KEY ("MA_QUYEN");

-- ----------------------------
-- Checks structure for table QUYEN
-- ----------------------------
ALTER TABLE "ADMIN"."QUYEN" ADD CONSTRAINT "SYS_C0011186" CHECK ("MA_QUYEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."QUYEN" ADD CONSTRAINT "SYS_C0011187" CHECK ("MA_QUYEN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table QUYEN
-- ----------------------------
CREATE TRIGGER "ADMIN"."QUYEN_TRG" BEFORE INSERT ON "ADMIN"."QUYEN" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_QUYEN IS NULL THEN
      SELECT QUYEN_SEQ.NEXTVAL INTO :NEW.MA_QUYEN FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

-- ----------------------------
-- Primary Key structure for table SANPHAM
-- ----------------------------
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011143" PRIMARY KEY ("MA_SANPHAM");

-- ----------------------------
-- Uniques structure for table SANPHAM
-- ----------------------------
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011136" UNIQUE ("TENSANPHAM") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table SANPHAM
-- ----------------------------
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011134" CHECK ("MA_SANPHAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011135" CHECK ("MA_LOAISP" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011137" CHECK ("MA_SANPHAM" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011138" CHECK ("MA_LOAISP" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011139" CHECK ("TRANGTHAIKM" ='Y' OR "TRANGTHAIKM"='N') NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011140" CHECK ("TRANGTHAIHOT" ='Y' OR "TRANGTHAIHOT"='N') NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011141" CHECK ("TRANGTHAITOPWEEK" ='Y' OR "TRANGTHAITOPWEEK"='N') NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011142" CHECK ("TRANGTHAIBAN" ='Y' OR "TRANGTHAIBAN"='N') NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table SANPHAM
-- ----------------------------
CREATE TRIGGER "ADMIN"."CHECK_KHUYENMAI" BEFORE INSERT OR UPDATE OF "GIAKM" ON "ADMIN"."SANPHAM" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF 
    :NEW.GIAKM > :NEW.GIABAN OR
    :NEW.GIAKM > :OLD.GIABAN
    THEN
    RAISE_APPLICATION_ERROR (-20005, 'LOI! NHAP LAI, GIA KHUYEN MAI PHAI NHO HON GIA BÁN');
    END IF;
END;
/
CREATE TRIGGER "ADMIN"."SANHAM_TRG_MOTA" BEFORE INSERT OR UPDATE ON "ADMIN"."SANPHAM" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF
        LENGTH(:NEW.MOTASP)<20
    THEN
        RAISE_APPLICATION_ERROR (-20006, 'LOI! NHAP LAI,MÔ TẢ PHẢI LỚN HƠN 20 KÝ TỰ');
    END IF;
END;
/
CREATE TRIGGER "ADMIN"."SANPHAM_TRG" BEFORE INSERT ON "ADMIN"."SANPHAM" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_SANPHAM IS NULL THEN
      SELECT SANPHAM_SEQ.NEXTVAL INTO :NEW.MA_SANPHAM FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
CREATE TRIGGER "ADMIN"."SANPHAM_TRG_NGAYTAO" BEFORE INSERT ON "ADMIN"."SANPHAM" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :NEW.NGAYTAOSP := SYSDATE;
END;
/
CREATE TRIGGER "ADMIN"."SANPHAM_URL" BEFORE INSERT OR UPDATE ON "ADMIN"."SANPHAM" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  :NEW.URL := FN_CONVERT_TO_VN(:NEW.TENSANPHAM);
END;
/

-- ----------------------------
-- Primary Key structure for table TAG
-- ----------------------------
ALTER TABLE "ADMIN"."TAG" ADD CONSTRAINT "SYS_C0011185" PRIMARY KEY ("MA_TAG");

-- ----------------------------
-- Checks structure for table TAG
-- ----------------------------
ALTER TABLE "ADMIN"."TAG" ADD CONSTRAINT "SYS_C0011183" CHECK ("MA_TAG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."TAG" ADD CONSTRAINT "SYS_C0011184" CHECK ("MA_TAG" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table TAG
-- ----------------------------
CREATE TRIGGER "ADMIN"."TAG_TRG" BEFORE INSERT ON "ADMIN"."TAG" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_TAG IS NULL THEN
      SELECT TAG_SEQ.NEXTVAL INTO :NEW.MA_TAG FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

-- ----------------------------
-- Primary Key structure for table THONGTINWEBSITE
-- ----------------------------
ALTER TABLE "ADMIN"."THONGTINWEBSITE" ADD CONSTRAINT "SYS_C0011152" PRIMARY KEY ("MA_THONGTIN");

-- ----------------------------
-- Checks structure for table THONGTINWEBSITE
-- ----------------------------
ALTER TABLE "ADMIN"."THONGTINWEBSITE" ADD CONSTRAINT "SYS_C0011150" CHECK ("MA_THONGTIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."THONGTINWEBSITE" ADD CONSTRAINT "SYS_C0011151" CHECK ("MA_THONGTIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table THONGTINWEBSITE
-- ----------------------------
CREATE TRIGGER "ADMIN"."UNDELETE_TTWEB" BEFORE DELETE ON "ADMIN"."THONGTINWEBSITE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    IF 
    :OLD.MA_THONGTIN = 1
    THEN
    RAISE_APPLICATION_ERROR (-20004, 'lỖI! KHÔNG DƯỢC XOÁ DỮ LIỆU');
    END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table TRANGTHAIDDH
-- ----------------------------
ALTER TABLE "ADMIN"."TRANGTHAIDDH" ADD CONSTRAINT "SYS_C0011133" PRIMARY KEY ("MA_TTDDH");

-- ----------------------------
-- Checks structure for table TRANGTHAIDDH
-- ----------------------------
ALTER TABLE "ADMIN"."TRANGTHAIDDH" ADD CONSTRAINT "SYS_C0011131" CHECK ("MA_TTDDH" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."TRANGTHAIDDH" ADD CONSTRAINT "SYS_C0011132" CHECK ("MA_TTDDH" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table TRANGTHAIDDH
-- ----------------------------
CREATE TRIGGER "ADMIN"."TRANGTHAIDDH_TRG" BEFORE INSERT ON "ADMIN"."TRANGTHAIDDH" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_TTDDH IS NULL THEN
      SELECT TRANGTHAIDDH_SEQ.NEXTVAL INTO :NEW.MA_TTDDH FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

-- ----------------------------
-- Primary Key structure for table TRANGTHAIHD
-- ----------------------------
ALTER TABLE "ADMIN"."TRANGTHAIHD" ADD CONSTRAINT "SYS_C0011164" PRIMARY KEY ("MA_TTHD");

-- ----------------------------
-- Checks structure for table TRANGTHAIHD
-- ----------------------------
ALTER TABLE "ADMIN"."TRANGTHAIHD" ADD CONSTRAINT "SYS_C0011162" CHECK ("MA_TTHD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."TRANGTHAIHD" ADD CONSTRAINT "SYS_C0011163" CHECK ("MA_TTHD" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table TRANGTHAIHD
-- ----------------------------
CREATE TRIGGER "ADMIN"."TRANGTHAIHD_TRG" BEFORE INSERT ON "ADMIN"."TRANGTHAIHD" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.MA_TTHD IS NULL THEN
      SELECT TRANGTHAIHD_SEQ.NEXTVAL INTO :NEW.MA_TTHD FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/

-- ----------------------------
-- Foreign Keys structure for table CHITIETDDH
-- ----------------------------
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011189" FOREIGN KEY ("MA_SANPHAM") REFERENCES "SANPHAM" ("MA_SANPHAM") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETDDH" ADD CONSTRAINT "SYS_C0011190" FOREIGN KEY ("MA_DONDATHANG") REFERENCES "DONDATHANG" ("MA_DONDATHANG") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CHITIETTAG
-- ----------------------------
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011191" FOREIGN KEY ("MA_TAG") REFERENCES "TAG" ("MA_TAG") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."CHITIETTAG" ADD CONSTRAINT "SYS_C0011192" FOREIGN KEY ("MA_SANPHAM") REFERENCES "SANPHAM" ("MA_SANPHAM") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table DONDATHANG
-- ----------------------------
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011193" FOREIGN KEY ("MA_NHANVIEN") REFERENCES "NHANVIEN" ("MA_NHANVIEN") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011194" FOREIGN KEY ("MA_KHACHHANG") REFERENCES "KHACHHANG" ("MA_KHACHHANG") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."DONDATHANG" ADD CONSTRAINT "SYS_C0011195" FOREIGN KEY ("MA_TTDDH") REFERENCES "TRANGTHAIDDH" ("MA_TTDDH") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table HOADON
-- ----------------------------
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011196" FOREIGN KEY ("MA_NHANVIEN") REFERENCES "NHANVIEN" ("MA_NHANVIEN") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011197" FOREIGN KEY ("MA_DONDATHANG") REFERENCES "DONDATHANG" ("MA_DONDATHANG") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN"."HOADON" ADD CONSTRAINT "SYS_C0011198" FOREIGN KEY ("MA_TTHD") REFERENCES "TRANGTHAIHD" ("MA_TTHD") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table NHANVIEN
-- ----------------------------
ALTER TABLE "ADMIN"."NHANVIEN" ADD CONSTRAINT "SYS_C0011199" FOREIGN KEY ("MA_QUYEN") REFERENCES "QUYEN" ("MA_QUYEN") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table SANPHAM
-- ----------------------------
ALTER TABLE "ADMIN"."SANPHAM" ADD CONSTRAINT "SYS_C0011200" FOREIGN KEY ("MA_LOAISP") REFERENCES "LOAISP" ("MA_LOAISP") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
