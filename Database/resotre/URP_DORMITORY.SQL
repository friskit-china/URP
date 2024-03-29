--INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ();
CREATE TABLE "URP_DORMITORY"(
	"DORM_NO" CHAR(4) NOT NULL, 
	"BUILD_NO" CHAR(2) NOT NULL, 
	"APARTMENT_NO" CHAR(4) NOT NULL, 
	"SEX" CHAR(1) NOT NULL, 
	"STU_NUM" NUMBER(2,0) NOT NULL, 
	"MANAGER" CHAR(8), 
	"PHONE" CHAR(7), 
	CONSTRAINT "PK_URP_DORMITORY_DORM_NO" PRIMARY KEY ("DORM_NO")
	--CONSTRAINT "FK_URP_DORMITORY_MANAGER" FOREIGN KEY ("MANAGER") REFERENCES "URP_STUDENT" ("STU_NO")
);

INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0241','01','0201','1','6','09090001','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0242','01','0202','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0243','01','0203','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0244','01','0204','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0245','01','0205','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0246','01','0206','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0247','01','0207','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0248','01','0208','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0249','01','0209','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0250','01','0210','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0001','06','0101','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0002','06','0102','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0003','06','0103','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0004','06','0104','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0005','06','0105','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0006','06','0106','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0007','06','0107','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0008','06','0108','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0009','06','0109','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0010','06','0110','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0011','06','0111','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0012','06','0112','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0013','06','0113','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0014','06','0114','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0015','06','0115','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0016','06','0116','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0017','06','0117','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0018','06','0118','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0019','06','0119','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0020','06','0120','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0021','06','0201','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0022','06','0202','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0023','06','0203','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0024','06','0204','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0025','06','0205','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0026','06','0206','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0027','06','0207','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0028','06','0208','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0029','06','0209','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0030','06','0210','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0031','06','0211','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0032','06','0212','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0033','06','0213','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0034','06','0214','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0035','06','0215','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0036','06','0216','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0037','06','0217','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0038','06','0218','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0039','06','0219','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0040','06','0220','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0041','06','0301','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0042','06','0302','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0043','06','0303','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0044','06','0304','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0045','06','0305','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0046','06','0306','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0047','06','0307','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0048','06','0308','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0049','06','0309','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0050','06','0310','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0051','06','0311','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0052','06','0312','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0053','06','0313','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0054','06','0314','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0055','06','0315','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0056','06','0316','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0057','06','0317','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0058','06','0318','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0059','06','0319','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0060','06','0320','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0061','06','0401','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0062','06','0402','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0063','06','0403','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0064','06','0404','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0065','06','0405','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0066','06','0406','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0067','06','0407','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0068','06','0408','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0069','06','0409','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0070','06','0410','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0071','06','0411','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0072','06','0412','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0073','06','0413','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0074','06','0414','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0075','06','0415','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0076','06','0416','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0077','06','0417','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0078','06','0418','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0079','06','0419','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0080','06','0420','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0081','06','0501','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0082','06','0502','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0083','06','0503','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0084','06','0504','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0085','06','0505','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0086','06','0506','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0087','06','0507','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0088','06','0508','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0089','06','0509','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0090','06','0510','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0091','06','0511','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0092','06','0512','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0093','06','0513','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0094','06','0514','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0095','06','0515','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0096','06','0516','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0097','06','0517','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0098','06','0518','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0099','06','0519','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0100','06','0520','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0101','06','0601','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0102','06','0602','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0103','06','0603','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0104','06','0604','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0105','06','0605','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0106','06','0606','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0107','06','0607','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0108','06','0608','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0109','06','0609','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0110','06','0610','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0111','06','0611','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0112','06','0612','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0113','06','0613','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0114','06','0614','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0115','06','0615','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0116','06','0616','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0117','06','0617','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0118','06','0618','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0119','06','0619','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0120','06','0620','1','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0121','05','0101','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0122','05','0102','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0123','05','0103','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0124','05','0104','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0125','05','0105','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0126','05','0106','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0127','05','0107','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0128','05','0108','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0129','05','0109','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0130','05','0110','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0131','05','0111','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0132','05','0112','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0133','05','0113','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0134','05','0114','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0135','05','0115','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0136','05','0116','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0137','05','0117','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0138','05','0118','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0139','05','0119','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0140','05','0120','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0141','05','0201','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0142','05','0202','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0143','05','0203','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0144','05','0204','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0145','05','0205','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0146','05','0206','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0147','05','0207','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0148','05','0208','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0149','05','0209','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0150','05','0210','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0151','05','0211','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0152','05','0212','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0153','05','0213','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0154','05','0214','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0155','05','0215','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0156','05','0216','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0157','05','0217','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0158','05','0218','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0159','05','0219','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0160','05','0220','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0161','05','0301','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0162','05','0302','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0163','05','0303','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0164','05','0304','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0165','05','0305','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0166','05','0306','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0167','05','0307','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0168','05','0308','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0169','05','0309','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0170','05','0310','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0171','05','0311','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0172','05','0312','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0173','05','0313','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0174','05','0314','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0175','05','0315','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0176','05','0316','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0177','05','0317','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0178','05','0318','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0179','05','0319','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0180','05','0320','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0181','05','0401','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0182','05','0402','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0183','05','0403','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0184','05','0404','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0185','05','0405','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0186','05','0406','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0187','05','0407','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0188','05','0408','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0189','05','0409','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0190','05','0410','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0191','05','0411','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0192','05','0412','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0193','05','0413','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0194','05','0414','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0195','05','0415','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0196','05','0416','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0197','05','0417','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0198','05','0418','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0199','05','0419','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0200','05','0420','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0201','05','0501','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0202','05','0502','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0203','05','0503','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0204','05','0504','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0205','05','0505','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0206','05','0506','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0207','05','0507','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0208','05','0508','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0209','05','0509','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0210','05','0510','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0211','05','0511','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0212','05','0512','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0213','05','0513','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0214','05','0514','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0215','05','0515','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0216','05','0516','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0217','05','0517','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0218','05','0518','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0219','05','0519','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0220','05','0520','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0221','05','0601','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0222','05','0602','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0223','05','0603','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0224','05','0604','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0225','05','0605','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0226','05','0606','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0227','05','0607','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0228','05','0608','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0229','05','0609','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0230','05','0610','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0231','05','0611','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0232','05','0612','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0233','05','0613','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0234','05','0614','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0235','05','0615','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0236','05','0616','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0237','05','0617','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0238','05','0618','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0239','05','0619','2','6','','');
INSERT INTO "URP_DORMITORY" ("DORM_NO","BUILD_NO","APARTMENT_NO","SEX","STU_NUM","MANAGER","PHONE") VALUES ('0240','05','0620','2','6','','');