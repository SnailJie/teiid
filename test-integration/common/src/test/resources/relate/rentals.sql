CREATE TABLE "ACCESSORIES"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   ACCID varchar(10),
   TYPE varchar(40),
   MODEL varchar(15),
   VERSION varchar(15)
);
CREATE TABLE "COLORS"
(
   COLORID varchar(10) primary key,
   NAME varchar(42),
   VEHICLEID varchar(10)
);
create index colors_vid_idx on colors (vehicleid);

CREATE TABLE "COMPANIES"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   COMPANYID varchar(10) primary key,
   FULLNAME varchar(40),
   CLASSIFICATION varchar(15)
);
CREATE TABLE "LOCATIONS"
(
   LOCATIONID varchar(10),
   NAME varchar(42),
   COMPANYID varchar(10)
);
CREATE TABLE "REL_COMP_ACC"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   NATURE varchar(15),
   SUBJECTTYPE varchar(40),
   TARGETTYPE varchar(40),
   COMPANYID varchar(10) NOT NULL,
   ACCESSORYID varchar(10) NOT NULL,
   QUANTITYAUTH int,
   QUANTITYAVAIL int
);
CREATE TABLE "REL_COMP_SHARE"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   NATURE varchar(15),
   SUBJECTTYPE varchar(40),
   TARGETTYPE varchar(40),
   PRIMARYID varchar(10),
   SECONDARYID varchar(10),
   SINCE numeric(10,0)
);
CREATE TABLE "REL_COMP_SUBSID"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   NATURE varchar(15),
   SUBJECTTYPE varchar(40),
   TARGETTYPE varchar(40),
   COMPANYID varchar(10),
   SUBSIDIARYID varchar(10),
   PERCENTOWNS numeric(10,0)
);
CREATE TABLE "REL_COMP_VEH"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   NATURE varchar(15),
   SUBJECTTYPE varchar(40),
   TARGETTYPE varchar(40),
   COMPANYID varchar(10) NOT NULL,
   VEHICLEID varchar(10) NOT NULL,
   QUANTITYAUTH int,
   QUANTITYAVAIL int
);
CREATE TABLE "REL_VEH_ACC"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   NATURE varchar(15),
   SUBJECTTYPE varchar(40),
   TARGETTYPE varchar(40),
   VEHICLEID varchar(10) NOT NULL,
   ACCESSORYID varchar(10) NOT NULL,
   QUANTITYAUTH int,
   QUANTITYAVAIL int
);
CREATE TABLE "RENTAL_PRODUCTS"
(
   PRODUCTID varchar(10) NOT NULL,
   DURATION varchar(42),
   VEHICLEID varchar(10),
   COMPANYID varchar(10)
);
CREATE TABLE "VEHICLES"
(
   COMMONNAME varchar(40),
   UUID varchar(36),
   QUUID varchar(36),
   VEHICLEID varchar(10) primary key,
   STYLE varchar(40),
   MAKE varchar(15),
   MODEL varchar(15),
   MODELYEAR int
);

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Emerson NV-5000','AUUID2','AQUUID2','AID2','GPS','Emerson','NV-5000');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Garmin Street Pilot','AUUID1','AQUUID1','AID1','GPS','Garmin','Street Pilot');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Gvox A0102','AUUID5','AQUUID5','AID5','DVD','Gvox','A0102');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Gvox A0201','AUUID4','AQUUID4','AID4','DVD','Gvox','A0201');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Pioneer AVIC-N2','AUUID6','AQUUID6','AID6','Navigation','Pioneer','AVIC-N2');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Pioneer CD-VC60','AUUID8','AQUUID8','AID8','Voice Guidance','Pioneer','CD-VC60');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Pyle PLDVD65IN','AUUID3','AQUUID3','AID3','DVD','Pyle','PLDVD65IN');

INSERT INTO "ACCESSORIES" (COMMONNAME,UUID,QUUID,ACCID,TYPE,MODEL,VERSION) VALUES ('Sanyo NV-E700','AUUID7','AQUUID7','AID7','Navigation','Sanyo','NV-E700');



INSERT INTO "COLORS" (COLORID,NAME,VEHICLEID) VALUES ('C1','Red','VID1');

INSERT INTO "COLORS" (COLORID,NAME,VEHICLEID) VALUES ('C2','Black','VID1');

INSERT INTO "COLORS" (COLORID,NAME,VEHICLEID) VALUES ('C3','Puce','VID2');

INSERT INTO "COLORS" (COLORID,NAME,VEHICLEID) VALUES ('C4','Red','VID3');

INSERT INTO "COLORS" (COLORID,NAME,VEHICLEID) VALUES ('C5','Black','VID4');



INSERT INTO "COMPANIES" (COMMONNAME,UUID,QUUID,COMPANYID,FULLNAME,CLASSIFICATION) VALUES ('Avian','CUUID1','CQUUID1','CID1','Avian Rentals, Inc.','Consumer');

INSERT INTO "COMPANIES" (COMMONNAME,UUID,QUUID,COMPANYID,FULLNAME,CLASSIFICATION) VALUES ('Budge','CUUID3','CQUUID3','CID3','Budge, Inc.','Wholesale');

INSERT INTO "COMPANIES" (COMMONNAME,UUID,QUUID,COMPANYID,FULLNAME,CLASSIFICATION) VALUES ('Entertwine','CUUID2','CQUUID2','CID2','Entertwine Rent A Car, Inc.','Consumer');

INSERT INTO "COMPANIES" (COMMONNAME,UUID,QUUID,COMPANYID,FULLNAME,CLASSIFICATION) VALUES ('Gigahertz','CUUID4','CQUUID4','CID4','Gigahertz, Inc.','Consumer');

INSERT INTO "COMPANIES" (COMMONNAME,UUID,QUUID,COMPANYID,FULLNAME,CLASSIFICATION) VALUES ('Peso','CUUID5','CQUUID5','CID5','Peso, Inc.','Consumer');

INSERT INTO "COMPANIES" (COMMONNAME,UUID,QUUID,COMPANYID,FULLNAME,CLASSIFICATION) VALUES ('Wholefleet','CUUID6','CQUUID6','CID6','Wholefleet, Inc.','Wholesale');



INSERT INTO "LOCATIONS" (LOCATIONID,NAME,COMPANYID) VALUES ('LOC1','Pittsburgh','CID1');

INSERT INTO "LOCATIONS" (LOCATIONID,NAME,COMPANYID) VALUES ('LOC2','Moosejaw','CID2');

INSERT INTO "LOCATIONS" (LOCATIONID,NAME,COMPANYID) VALUES ('LOC3','Keokuk','CID1');



INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA11','CAUUID11','CAQUUID11','offers','Company','Accessory','CID1','AID1',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA12','CAUUID12','CAQUUID12','offers','Company','Accessory','CID1','AID2',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA13','CAUUID13','CAQUUID13','offers','Company','Accessory','CID1','AID3',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA14','CAUUID14','CAQUUID14','offers','Company','Accessory','CID1','AID4',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA15','CAUUID15','CAQUUID15','offers','Company','Accessory','CID1','AID5',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA16','CAUUID16','CAQUUID16','offers','Company','Accessory','CID1','AID6',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA21','CAUUID21','CAQUUID21','offers','Company','Accessory','CID2','AID1',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA22','CAUUID22','CAQUUID22','offers','Company','Accessory','CID2','AID2',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA23','CAUUID23','CAQUUID23','offers','Company','Accessory','CID2','AID3',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA33','CAUUID33','CAQUUID33','offers','Company','Accessory','CID3','AID3',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA61','CAUUID61','CAQUUID61','offers','Company','Accessory','CID6','AID1',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA62','CAUUID62','CAQUUID62','offers','Company','Accessory','CID6','AID2',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA63','CAUUID63','CAQUUID63','offers','Company','Accessory','CID6','AID3',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA64','CAUUID64','CAQUUID64','offers','Company','Accessory','CID6','AID4',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA65','CAUUID65','CAQUUID65','offers','Company','Accessory','CID6','AID5',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA66','CAUUID66','CAQUUID66','offers','Company','Accessory','CID6','AID6',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA67','CAUUID67','CAQUUID67','offers','Company','Accessory','CID6','AID7',1,1);

INSERT INTO "REL_COMP_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCA68','CAUUID68','CAQUUID68','offers','Company','Accessory','CID6','AID8',1,1);



INSERT INTO "REL_COMP_SHARE" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,PRIMARYID,SECONDARYID,SINCE) VALUES ('RCC12','CCUUID12','CCQUUID12','sharesWith','Company','Company','CID1','CID2',1985);

INSERT INTO "REL_COMP_SHARE" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,PRIMARYID,SECONDARYID,SINCE) VALUES ('RCC13','CCUUID13','CCQUUID13','sharesWith','Company','Company','CID1','CID3',1995);

INSERT INTO "REL_COMP_SHARE" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,PRIMARYID,SECONDARYID,SINCE) VALUES ('RCC14','CCUUID14','CCQUUID14','sharesWith','Company','Company','CID1','CID4',2005);

INSERT INTO "REL_COMP_SHARE" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,PRIMARYID,SECONDARYID,SINCE) VALUES ('RCC34','CCUUID34','CCQUUID34','sharesWith','Company','Company','CID3','CID4',2001);

INSERT INTO "REL_COMP_SHARE" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,PRIMARYID,SECONDARYID,SINCE) VALUES ('RCC54','CCUUID54','CCQUUID54','sharesWith','Company','Company','CID5','CID4',1999);

INSERT INTO "REL_COMP_SHARE" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,PRIMARYID,SECONDARYID,SINCE) VALUES ('RCC64','CCUUID64','CCQUUID64','sharesWith','Company','Company','CID6','CID4',1995);



INSERT INTO "REL_COMP_SUBSID" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,SUBSIDIARYID,PERCENTOWNS) VALUES ('RCS12','CSUUID12','CSQUUID12','owns','Company','Subsidiary','CID1','CID2',10);

INSERT INTO "REL_COMP_SUBSID" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,SUBSIDIARYID,PERCENTOWNS) VALUES ('RCS13','CSUUID13','CSQUUID13','owns','Company','Subsidiary','CID1','CID3',50);

INSERT INTO "REL_COMP_SUBSID" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,SUBSIDIARYID,PERCENTOWNS) VALUES ('RCS43','CSUUID43','CSQUUID43','owns','Company','Subsidiary','CID4','CID3',10);

INSERT INTO "REL_COMP_SUBSID" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,SUBSIDIARYID,PERCENTOWNS) VALUES ('RCS56','CSUUID56','CSQUUID56','owns','Company','Subsidiary','CID5','CID6',100);



INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV11','CVUUID11','CVQUUID11','rents','Company','Vehicle','CID1','VID1',10,2);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV12','CVUUID12','CVQUUID12','rents','Company','Vehicle','CID1','VID2',2,2);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV13','CVUUID13','CVQUUID13','rents','Company','Vehicle','CID1','VID3',2,0);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV14','CVUUID14','CVQUUID14','rents','Company','Vehicle','CID1','VID4',2,1);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV21','CVUUID21','CVQUUID21','rents','Company','Vehicle','CID2','VID1',5,3);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV22','CVUUID22','CVQUUID22','rents','Company','Vehicle','CID2','VID2',2,1);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV32','CVUUID32','CVQUUID32','rents','Company','Vehicle','CID3','VID2',1,1);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV47','CVUUID47','CVQUUID47','rents','Company','Vehicle','CID4','VID7',1,1);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV61','CVUUID61','CVQUUID61','rents','Company','Vehicle','CID6','VID1',1,1);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV62','CVUUID62','CVQUUID62','rents','Company','Vehicle','CID6','VID2',2,2);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV63','CVUUID63','CVQUUID63','rents','Company','Vehicle','CID6','VID3',3,3);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV64','CVUUID64','CVQUUID64','rents','Company','Vehicle','CID6','VID4',4,4);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV65','CVUUID65','CVQUUID65','rents','Company','Vehicle','CID6','VID5',5,5);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV66','CVUUID66','CVQUUID66','rents','Company','Vehicle','CID6','VID6',6,6);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV67','CVUUID67','CVQUUID67','rents','Company','Vehicle','CID6','VID7',7,7);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV68','CVUUID68','CVQUUID68','rents','Company','Vehicle','CID6','VID8',8,8);

INSERT INTO "REL_COMP_VEH" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,COMPANYID,VEHICLEID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RCV69','CVUUID69','CVQUUID69','rents','Company','Vehicle','CID6','VID9',9,9);



INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA11','VAUUID11','VAQUUID11','has','Vehicle','Accessory','VID1','AID1',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA12','VAUUID12','VAQUUID12','has','Vehicle','Accessory','VID1','AID2',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA13','VAUUID13','VAQUUID13','has','Vehicle','Accessory','VID1','AID3',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA23','VAUUID23','VAQUUID23','has','Vehicle','Accessory','VID2','AID3',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA34','VAUUID34','VAQUUID34','has','Vehicle','Accessory','VID3','AID4',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA35','VAUUID35','VAQUUID35','has','Vehicle','Accessory','VID3','AID5',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA41','VAUUID41','VAQUUID41','has','Vehicle','Accessory','VID4','AID1',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA45','VAUUID45','VAQUUID45','has','Vehicle','Accessory','VID4','AID5',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA46','VAUUID46','VAQUUID46','has','Vehicle','Accessory','VID4','AID6',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA51','VAUUID51','VAQUUID51','has','Vehicle','Accessory','VID5','AID1',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA53','VAUUID53','VAQUUID53','has','Vehicle','Accessory','VID5','AID3',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA55','VAUUID55','VAQUUID55','has','Vehicle','Accessory','VID5','AID5',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA57','VAUUID57','VAQUUID57','has','Vehicle','Accessory','VID5','AID7',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA62','VAUUID62','VAQUUID62','has','Vehicle','Accessory','VID6','AID2',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA64','VAUUID64','VAQUUID64','has','Vehicle','Accessory','VID6','AID4',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA66','VAUUID66','VAQUUID66','has','Vehicle','Accessory','VID6','AID6',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA68','VAUUID68','VAQUUID68','has','Vehicle','Accessory','VID6','AID8',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA88','VAUUID88','VAQUUID88','has','Vehicle','Accessory','VID8','AID8',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA91','VAUUID91','VAQUUID91','has','Vehicle','Accessory','VID9','AID1',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA92','VAUUID92','VAQUUID92','has','Vehicle','Accessory','VID9','AID2',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA93','VAUUID93','VAQUUID93','has','Vehicle','Accessory','VID9','AID3',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA94','VAUUID94','VAQUUID94','has','Vehicle','Accessory','VID9','AID4',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA95','VAUUID95','VAQUUID95','has','Vehicle','Accessory','VID9','AID5',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA96','VAUUID96','VAQUUID96','has','Vehicle','Accessory','VID9','AID6',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA97','VAUUID97','VAQUUID97','has','Vehicle','Accessory','VID9','AID7',1,1);

INSERT INTO "REL_VEH_ACC" (COMMONNAME,UUID,QUUID,NATURE,SUBJECTTYPE,TARGETTYPE,VEHICLEID,ACCESSORYID,QUANTITYAUTH,QUANTITYAVAIL) VALUES ('RVA98','VAUUID98','VAQUUID98','has','Vehicle','Accessory','VID9','AID8',1,1);



INSERT INTO "RENTAL_PRODUCTS" (PRODUCTID,DURATION,VEHICLEID,COMPANYID) VALUES ('P1','Hourly','VID1','CID1');

INSERT INTO "RENTAL_PRODUCTS" (PRODUCTID,DURATION,VEHICLEID,COMPANYID) VALUES ('P2','Daily','VID1','CID1');

INSERT INTO "RENTAL_PRODUCTS" (PRODUCTID,DURATION,VEHICLEID,COMPANYID) VALUES ('P3','Weekly','VID1','CID1');

INSERT INTO "RENTAL_PRODUCTS" (PRODUCTID,DURATION,VEHICLEID,COMPANYID) VALUES ('P4','Weekly','VID2','CID1');



INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Chevy Tahoe 2005','VUUID3','VQUUID3','VID3','Utility','Chevrolet','Tahoe',2005);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Ford F150 2004','VUUID2','VQUUID2','VID2','Utility','Ford','F150',2004);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Ford F150 2005','VUUID1','VQUUID1','VID1','Utility','Ford','F150',2005);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Ford Windstar 2004','VUUID5','VQUUID5','VID5','Minivan','Ford','Windstar',2004);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Ford Windstar 2005','VUUID4','VQUUID4','VID4','Minivan','Ford','Windstar',2005);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Honda Pilot 2005','VUUID9','VQUUID9','VID9','SUV','Honda','Pilot',2005);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Nissan Quest 2004','VUUID7','VQUUID7','VID7','Minivan','Nissan','Quest',2004);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Nissan Quest 2005','VUUID6','VQUUID6','VID6','Minivan','Nissan','Quest',2005);

INSERT INTO "VEHICLES" (COMMONNAME,UUID,QUUID,VEHICLEID,STYLE,MAKE,MODEL,MODELYEAR) VALUES ('Toyota Sienna 2004','VUUID8','VQUUID8','VID8','Minivan','Toyota','Sienna',2004);

