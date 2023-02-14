BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"AccountNumber" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingCountryCode" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStateCode" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Email__c" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingCountryCode" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStateCode" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Website" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','','ssdfasdf asdfasdf''s Account','','3334443433','','','','','','','','','','','','','','','','','dfsadf@dfujk.com','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(2,'','','david binghanm''s Account','','4806121701','','','','','','','','','','','','','','','','','david@bingham.me','','','','','','','','','','','','','','','','','','');
INSERT INTO "Account" VALUES(3,'','','Bob Barker''s Account','','4806665555','','','','','','','','','','','','','','','','','kjhsdfg@kljsdfhg.com','','','','','','','','','','','','','','','','','','');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"AssistantName" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"HomePhone" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingCountryCode" VARCHAR(255), 
	"MailingGeocodeAccuracy" VARCHAR(255), 
	"MailingLatitude" VARCHAR(255), 
	"MailingLongitude" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingStateCode" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"OtherCity" VARCHAR(255), 
	"OtherCountry" VARCHAR(255), 
	"OtherCountryCode" VARCHAR(255), 
	"OtherGeocodeAccuracy" VARCHAR(255), 
	"OtherLatitude" VARCHAR(255), 
	"OtherLongitude" VARCHAR(255), 
	"OtherPhone" VARCHAR(255), 
	"OtherState" VARCHAR(255), 
	"OtherStateCode" VARCHAR(255), 
	"OtherStreet" VARCHAR(255), 
	"OtherPostalCode" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"IndividualId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'','','','','','','','','False','david@bingham.me','','','False','False','david','4806121701','binghanm','','','','','','','','','','','','','','','','','','','','','','','','','','2','','');
INSERT INTO "Contact" VALUES(2,'','','','','','','','','False','dfsadf@dfujk.com','','','False','False','ssdfasdf','3334443433','asdfasdf','','','','','','','','','','','','','','','','','','','','','','','','','','1','','');
INSERT INTO "Contact" VALUES(3,'','','','','','','','','False','kjhsdfg@kljsdfhg.com','','','False','False','Bob','4806665555','Barker','','','','','','','','','','','','','','','','','','','','','','','','','','3','','');
CREATE TABLE "Horse__c" (
	id INTEGER NOT NULL, 
	"APHA__c" VARCHAR(255), 
	"APHC__c" VARCHAR(255), 
	"AQHA__c" VARCHAR(255), 
	"Color__c" VARCHAR(255), 
	"Date_Foaled__c" VARCHAR(255), 
	"Gender__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsCompeting__c" VARCHAR(255), 
	"Other__c" VARCHAR(255), 
	"Other_Breed_Association__c" VARCHAR(255), 
	"Registration_Number__c" VARCHAR(255), 
	"TB__c" VARCHAR(255), 
	"Dam__c" VARCHAR(255), 
	"Sire__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Horse__c" VALUES(1,'False','False','False','','','','tet','False','False','','sdf','False','','');
INSERT INTO "Horse__c" VALUES(2,'True','True','True','brown','','Gelding','test','False','False','','sdr','True','','');
INSERT INTO "Horse__c" VALUES(3,'False','False','False','','','Mare','DAM','False','False','','sdfgjklhsdg','False','','');
INSERT INTO "Horse__c" VALUES(4,'False','False','False','black','2023-02-09','','debug1','False','False','','debug1','False','','');
INSERT INTO "Horse__c" VALUES(5,'True','False','True','brown','2023-02-14','Stallion','regouhsdfohi','True','False','','skdjfhsdfu','False','3','6');
INSERT INTO "Horse__c" VALUES(6,'False','False','False','','','Stallion','SIRE','False','False','','sdfsdfsdf','False','','');
INSERT INTO "Horse__c" VALUES(7,'True','False','True','brown','2023-02-07','Stallion','testeahorsery','False','False','','wrkuh1','False','','');
INSERT INTO "Horse__c" VALUES(8,'True','True','True','blue','2023-01-30','Gelding','blue42','True','True','','sdiufgs','True','3','6');
INSERT INTO "Horse__c" VALUES(9,'False','False','False','red','','Gelding','red24','False','False','','red24','False','3','6');
INSERT INTO "Horse__c" VALUES(10,'False','False','False','','','','tesdt','False','False','','hgfkjvlj','False','3','6');
INSERT INTO "Horse__c" VALUES(11,'False','False','False','','','','tewset','False','False','','stset','False','','');
INSERT INTO "Horse__c" VALUES(12,'True','False','True','','','','tet','False','False','','st','False','','');
INSERT INTO "Horse__c" VALUES(13,'True','True','True','red','2023-02-06','Stallion','yay1','True','True','test1','ya1','True','3','6');
INSERT INTO "Horse__c" VALUES(14,'True','True','True','blue','2022-12-07','Gelding','yay2','True','True','test2','ya2','True','','');
INSERT INTO "Horse__c" VALUES(15,'True','True','True','yellow','2022-11-16','Mare','yay3','True','True','test3','ya3','True','','');
INSERT INTO "Horse__c" VALUES(16,'False','False','False','Brown','2023-02-10','','test1','False','False','','test1','False','','');
INSERT INTO "Horse__c" VALUES(17,'True','True','True','chestnut','2023-02-13','Mare','yay ragu','True','True','yayayayay','reg123084','True','3','6');
INSERT INTO "Horse__c" VALUES(18,'True','False','True','Brown','2023-02-14','Stallion','test rege978rs','False','False','','rege978rs','False','','');
INSERT INTO "Horse__c" VALUES(19,'True','False','False','','','','test111','False','False','','ksdh111','False','','');
INSERT INTO "Horse__c" VALUES(20,'False','False','False','','','','test','False','False','','testsetset','False','2','');
INSERT INTO "Horse__c" VALUES(21,'False','False','False','sdfsdf','','','testblah1','False','False','','testblah1','False','3','6');
INSERT INTO "Horse__c" VALUES(22,'False','False','False','sdf','','','testblah2','False','False','','testblah2','False','3','6');
INSERT INTO "Horse__c" VALUES(23,'False','False','False','tesssss','2023-03-06','Gelding','testset000345','False','False','','setsetsets','False','3','6');
INSERT INTO "Horse__c" VALUES(24,'False','False','False','test','2023-01-29','Gelding','test','False','False','','testset','False','','6');
INSERT INTO "Horse__c" VALUES(25,'False','False','False','','2023-01-31','','test','False','False','','test','False','','6');
INSERT INTO "Horse__c" VALUES(26,'True','True','True','gbrom','2023-03-08','Stallion','5tef','True','False','','5rerfs','True','','');
INSERT INTO "Horse__c" VALUES(27,'True','False','True','brown','2023-01-30','','testtest','False','False','','test2','False','','6');
INSERT INTO "Horse__c" VALUES(28,'False','False','False','','','','test','False','False','','teste','False','','');
INSERT INTO "Horse__c" VALUES(29,'False','False','False','brown','2023-02-16','','test','False','False','','test','False','','');
INSERT INTO "Horse__c" VALUES(30,'False','False','False','','','','TESTE','False','False','','TSDSES34T','False','','');
INSERT INTO "Horse__c" VALUES(31,'False','False','False','','','','ESD','False','False','','4353453','False','','');
INSERT INTO "Horse__c" VALUES(32,'False','False','False','','','','SDFSDFSDF','False','False','','4325','False','','');
CREATE TABLE "Individual" (
	id INTEGER NOT NULL, 
	"LastName" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"CanStorePiiElsewhere" VARCHAR(255), 
	"HasOptedOutGeoTracking" VARCHAR(255), 
	"HasOptedOutProcessing" VARCHAR(255), 
	"HasOptedOutProfiling" VARCHAR(255), 
	"HasOptedOutSolicit" VARCHAR(255), 
	"HasOptedOutTracking" VARCHAR(255), 
	"IsHomeOwner" VARCHAR(255), 
	"SendIndividualData" VARCHAR(255), 
	"ShouldForget" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;
