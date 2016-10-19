drop table DCUUser;
drop table DCUAccount;
drop table DCUTransaction;

create table DCUUser(
  userID number generated by default on null as identity primary key,
  name varchar(50),
  phone varchar(20),
  email varchar(200),
  passwordHash varchar(200)
);

create table DCUAccount(
  accountID number generated by default on null as identity primary key,
  status number,
  type number,
  userID number,
  accountDate date
);

create table DCUTransaction(
  transactionID number generated by default on null as identity primary key,
  accountID number,
  amount number(9,2),
  type number,
  transactionDate date
);

ALTER TABLE DCUACCOUNT
ADD CONSTRAINT DCUACCOUNT_FK1 FOREIGN KEY
(
  USERID 
)
REFERENCES DCUUSER
(
  USERID 
);

ALTER TABLE DCUTRANSACTION
ADD CONSTRAINT DCUTRANSACTION_FK1 FOREIGN KEY
(
  ACCOUNTID 
)
REFERENCES DCUACCOUNT
(
  ACCOUNTID 
);

INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Kessie Ayala','1-839-655-3799','arcu.eu@auctornonfeugiat.edu','Gage');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('India Randolph','1-472-577-9877','odio.sagittis.semper@acmattissemper.com','Otto');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Nita Hurley','1-154-969-7462','nec@Aliquamultricesiaculis.edu','Jerome');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Cameron Knox','1-934-639-4728','massa.lobortis@facilisis.com','Rooney');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Chiquita Vargas','1-845-416-3804','ante.bibendum@magna.com','Rigel');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Bo Combs','1-314-902-1975','egestas.ligula.Nullam@dapibus.edu','Melvin');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Vera Mayer','1-642-724-3467','Integer.urna@est.co.uk','William');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Lucy Cox','1-167-122-6618','nunc.nulla.vulputate@enim.com','Akeem');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Rhona Wilder','1-230-316-7232','et.magna@malesuada.ca','Gray');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Portia Eaton','1-722-712-6658','at.sem@consectetueripsum.co.uk','Zachery');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Dane Mcintyre','1-647-684-8005','Sed.pharetra.felis@Nunc.com','James');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Mollie William','1-577-639-7813','dolor@orci.net','Hunter');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Iona Hester','1-275-985-2778','Cras.vulputate@nulla.net','Phelan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Quon Howard','1-424-117-7860','rutrum.Fusce.dolor@Cras.org','Isaiah');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Lillian Francis','1-208-758-2290','egestas.Aliquam@orcitincidunt.edu','Talon');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Germane Lambert','1-299-362-9316','iaculis.enim.sit@commodo.ca','Samuel');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Tatyana Oneil','1-185-949-2063','euismod@anteVivamus.org','Ryder');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Alec Sloan','1-118-155-2627','magnis@temporeratneque.com','Rogan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Eagan Zimmerman','1-889-160-9512','orci.sem@auctorMauris.com','Colin');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Shellie Fleming','1-936-897-7099','a.sollicitudin@sollicitudincommodoipsum.ca','Beck');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Ainsley Tate','1-782-999-4645','dui.Suspendisse.ac@velitAliquamnisl.net','Yoshio');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Cara Phillips','1-827-796-1648','fermentum@cursus.edu','Myles');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Ella Ochoa','1-394-113-0003','vel@luctusfelis.edu','Jarrod');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Lois Clarke','1-676-537-1166','ipsum.dolor.sit@cursus.co.uk','Allen');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Chandler Dillard','1-342-574-1707','malesuada.id.erat@mauris.edu','Driscoll');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Hedy Brooks','1-975-221-1577','amet@acmattis.ca','Herman');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Michelle Mckay','1-355-571-5121','pede.ultrices.a@augueeutempor.org','Ross');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Tatum Day','1-105-838-2951','mollis.nec@esttemporbibendum.com','Darius');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Shannon Weiss','1-878-468-6345','tortor.nibh@purusmaurisa.com','Ashton');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Madaline Conner','1-469-587-3572','ornare.elit.elit@Morbi.org','Jordan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Rosalyn Jordan','1-647-716-9823','auctor@augue.net','Noble');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Delilah Garner','1-610-746-7549','neque@ut.ca','Jelani');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Noel Wyatt','1-558-962-4479','odio.a.purus@Aliquamauctor.co.uk','Burton');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Mannix Brewer','1-575-528-7992','lorem.auctor.quis@Donec.edu','Chaney');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Hedy Hall','1-190-141-4085','ornare@litoratorquentper.com','Charles');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Caesar Burke','1-558-645-8883','et@Morbiaccumsanlaoreet.org','Timothy');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Slade Ford','1-433-748-9388','diam.lorem.auctor@urnaVivamus.net','Cadman');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Moana Erickson','1-385-783-4184','non.enim@euaccumsan.com','Dylan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Carolyn Cotton','1-922-672-2765','vitae.erat@necmetus.co.uk','Mufutau');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Coby Burnett','1-344-541-1958','Aenean@scelerisqueloremipsum.co.uk','Jeremy');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Beverly Massey','1-289-502-4995','eu.turpis@sem.org','Hasad');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Chastity Wall','1-868-143-6993','mollis.Duis.sit@Nullamscelerisqueneque.com','Cameron');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Vielka Frederick','1-326-707-6843','a.feugiat.tellus@molestietellusAenean.org','Dante');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Hiroko Harper','1-549-367-1320','pharetra@justoPraesentluctus.co.uk','Beck');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Erasmus Case','1-500-496-1600','Nam@risusQuisque.net','Fritz');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Garth Rutledge','1-295-277-8208','dis.parturient.montes@inmolestie.org','Clayton');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Theodore Woodard','1-869-596-9893','parturient@Duissit.ca','Elton');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Tiger Floyd','1-655-955-3925','elit.erat.vitae@eutemporerat.com','Chase');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Cyrus Larsen','1-280-584-8403','rutrum.lorem@urnaNuncquis.co.uk','Kamal');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Laurel Sandoval','1-926-381-8982','ultricies.adipiscing.enim@vel.co.uk','Uriah');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Micah Alston','1-653-109-9028','viverra.Donec.tempus@necurna.ca','Giacomo');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Fiona Franklin','1-319-532-4996','non.arcu.Vivamus@Proin.ca','Austin');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Randall Kaufman','1-380-683-6592','massa.rutrum.magna@nec.com','Garrison');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Tyrone Wynn','1-300-968-3819','non.magna@ultrices.ca','Julian');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Driscoll Sears','1-993-971-9355','purus.accumsan@Pellentesquetincidunt.org','Kareem');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Travis Horton','1-905-806-9710','in.aliquet.lobortis@adipiscingelitCurabitur.ca','Adrian');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Jeremy Weiss','1-844-905-4191','sit.amet@lacus.net','Eric');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Elaine Neal','1-982-576-5114','Nullam.suscipit@interdumNuncsollicitudin.net','Talon');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Hadassah Miranda','1-237-104-7057','rhoncus.Nullam.velit@nisl.net','Plato');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Stephanie Nunez','1-156-576-8065','consectetuer.cursus.et@aliquetmetus.co.uk','Andrew');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Ainsley Henderson','1-761-964-4363','mauris.erat.eget@Proin.net','Solomon');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Hu Gomez','1-968-701-2603','Sed@liberoProin.net','Griffin');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Victoria Little','1-985-469-1452','molestie@arcu.ca','Todd');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Kaye Zamora','1-341-725-0028','est.Nunc@non.net','Macon');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Otto Herman','1-744-613-7147','justo@ridiculusmusProin.net','Bert');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Winter Palmer','1-767-112-3688','sagittis@aliquamerosturpis.ca','Flynn');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Martina Walsh','1-677-915-8287','a@diam.com','Thane');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Camille Larsen','1-758-660-1236','tempor@auctorvelit.co.uk','Cade');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Bryar Mathis','1-501-898-0102','sem@mollis.ca','Randall');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Anne Hutchinson','1-210-735-1677','fermentum.vel.mauris@necmalesuadaut.net','Wayne');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Bevis Salazar','1-421-121-0403','mauris.rhoncus@massa.com','Myles');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Stewart Schroeder','1-801-644-5176','pede.Suspendisse.dui@Vivamus.co.uk','James');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Blair Rivers','1-156-852-7444','ut.nisi.a@commodoatlibero.co.uk','Yasir');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Priscilla Witt','1-829-656-3003','faucibus.orci.luctus@scelerisque.co.uk','Emery');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Nasim Blair','1-453-285-0305','enim.Sed@vestibulum.net','Hop');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Amela Cline','1-569-678-8582','nisi.Cum.sociis@nondui.ca','Cooper');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Nerea Hess','1-574-631-9244','non@pretiumnequeMorbi.edu','Uriel');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Guy Arnold','1-540-929-9585','risus.quis.diam@nec.net','Patrick');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Hermione Howell','1-751-186-3034','eu.arcu.Morbi@nibh.net','Jamal');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Baker Greer','1-365-184-6785','amet@magna.com','Allistair');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Aretha Nicholson','1-938-458-9572','consequat.lectus@vellectus.com','Gil');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Mary Bradshaw','1-772-125-9563','dignissim.Maecenas.ornare@tempus.co.uk','Russell');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Lane Mcguire','1-150-268-9325','lacus@suscipit.com','Lee');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Rina Crosby','1-886-213-2549','Suspendisse.non.leo@dictummi.net','Kennedy');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Bianca Garner','1-412-302-2872','massa.non@eratsemperrutrum.org','Daniel');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Gay Stout','1-671-952-4042','non@tristique.ca','Lionel');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Elvis Sexton','1-597-992-9213','Nullam.suscipit.est@SeddictumProin.net','Logan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Robin Pratt','1-178-317-6016','malesuada.augue.ut@enimdiamvel.co.uk','Conan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Cheyenne Flowers','1-736-596-7955','feugiat.Lorem.ipsum@Naminterdum.org','Levi');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Faith Martinez','1-845-783-5926','nulla@nonante.com','Gavin');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Katelyn Stout','1-683-188-7654','vulputate.nisi@lobortis.edu','Keith');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Quincy French','1-441-527-7170','erat@ultricesa.ca','August');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Renee Le','1-152-133-8832','Quisque.purus@nullaatsem.co.uk','Buckminster');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Burton Wolf','1-162-957-0505','magna@nec.ca','Caldwell');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Constance Puckett','1-705-599-5490','sed.turpis@velarcu.net','Melvin');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Kyla Weeks','1-240-266-9891','adipiscing.fringilla@Crasconvallisconvallis.net','Brody');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Miranda Norris','1-306-542-6623','fringilla.est@adipiscing.net','Joseph');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Latifah Medina','1-100-156-0768','ac.mattis.ornare@Integertincidunt.ca','Sylvester');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Claudia Mendez','1-804-845-2194','vehicula.aliquet@sagittisDuis.edu','Phelan');
INSERT INTO DCUUser (name,phone,email,passwordHash) VALUES ('Palmer Tran','1-281-746-8330','nonummy.ultricies@Sednullaante.co.uk','Emmanuel');

INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,27,'25-Oct-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,7,'25-Oct-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,44,'16-Feb-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,38,'22-Oct-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,26,'24-Mar-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,36,'04-Jan-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,41,'06-Jul-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,5,'25-Aug-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,8,'23-Apr-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,17,'05-Apr-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,39,'13-Jun-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,27,'08-Oct-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,3,'13-Jan-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,12,'14-Oct-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,4,'20-Jul-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,28,'01-Feb-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,33,'19-Sep-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,32,'06-Feb-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,24,'30-Mar-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,21,'04-Sep-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,21,'25-Nov-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,13,'18-Sep-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,26,'17-Jan-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,37,'27-Aug-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,40,'18-Jan-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,18,'05-Dec-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,12,'27-May-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,20,'18-Mar-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,15,'12-Jul-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,25,'10-Jan-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,2,'17-Nov-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,38,'30-Mar-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,20,'10-Nov-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,7,'16-Jul-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,45,'08-May-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,1,'04-Apr-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,44,'19-Aug-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,28,'02-Feb-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,25,'19-Apr-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,36,'12-Jul-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,2,'19-Dec-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,4,'05-Mar-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,37,'17-Jul-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,40,'14-Mar-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,43,'01-Nov-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,44,'13-Jan-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,48,'16-Mar-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,40,'03-Apr-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,3,'21-Jun-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,12,'26-Oct-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,9,'04-Oct-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,49,'30-Jul-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,19,'11-Jun-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,29,'31-Oct-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,2,'19-Dec-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,24,'22-Sep-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,32,'14-Dec-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,32,'07-Apr-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,49,'05-Jan-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,32,'16-Jun-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,42,'25-May-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,34,'19-Feb-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,19,'08-Jul-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,45,'07-Dec-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,15,'30-Apr-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,27,'08-Oct-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,35,'13-Aug-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,7,'17-Jan-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,17,'30-Sep-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,7,'21-Oct-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,38,'27-May-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,37,'10-Jan-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,47,'22-Nov-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,7,'31-Aug-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,25,'18-Feb-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,38,'29-Feb-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,42,'07-Sep-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,3,'05-Nov-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,41,'19-Oct-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,25,'04-Sep-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,37,'03-Jul-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,11,'21-Nov-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,5,'03-Feb-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,9,'30-Sep-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,1,'08-Jan-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,46,'19-Jul-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,35,'20-Feb-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,38,'31-Oct-2015');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,8,'12-Apr-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,11,'04-Dec-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,6,'30-Nov-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,0,11,'20-Nov-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,0,34,'20-Jan-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,31,'28-May-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,39,'14-May-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,24,'11-Jan-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,11,'04-Jun-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,5,'20-Dec-2016');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (1,1,1,'02-Aug-2017');
INSERT INTO DCUAccount (status,type,userID,accountDate) VALUES (0,1,35,'24-Feb-2017');

INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (29,1595,1,'31-Aug-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (43,4954,0,'20-Jan-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (21,4768,0,'13-Oct-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (44,4219,1,'05-Jun-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (34,4276,1,'13-May-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (2,10,1,'03-Oct-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (5,4776,0,'12-Nov-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (14,3275,1,'16-Dec-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (36,1346,0,'07-Oct-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (19,708,1,'19-Dec-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (5,27,0,'06-Sep-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (38,1663,0,'14-Aug-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (8,2547,1,'10-Mar-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (9,3773,0,'29-Nov-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (25,2074,0,'27-Jan-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (16,1767,0,'24-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (36,47,0,'31-May-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (26,481,1,'13-Aug-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (3,4152,0,'06-Jul-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (44,344,0,'23-Jun-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (46,4944,0,'15-Apr-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (38,1450,1,'24-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (43,1529,0,'13-Jul-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (49,2729,1,'29-Dec-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (4,3355,1,'03-Sep-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (2,4557,0,'18-Mar-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (16,385,0,'06-Jan-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (29,1444,0,'19-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (44,1834,1,'06-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (25,1977,1,'16-Nov-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (1,2464,1,'19-Oct-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (10,2608,1,'13-Apr-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (16,4036,0,'11-Jul-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (48,2555,1,'20-Jun-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (10,3166,1,'21-Sep-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (18,1331,0,'14-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (48,2692,0,'14-Sep-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (47,916,1,'15-Jul-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (47,4437,0,'22-May-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (8,4997,1,'04-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (32,756,0,'13-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (20,4734,1,'08-Dec-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (31,1869,1,'08-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (14,3723,1,'08-Jun-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (16,366,0,'05-Jun-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (26,3447,0,'16-Oct-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (49,2005,0,'25-Jun-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (20,1383,1,'10-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (27,4502,1,'29-Oct-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (34,4937,0,'19-Sep-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (26,2946,0,'17-Sep-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (32,1254,1,'19-Nov-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (9,1736,1,'22-Oct-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (20,2529,0,'21-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (39,4417,0,'14-Mar-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (13,3622,0,'01-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (6,4160,0,'25-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (30,667,0,'06-Feb-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (6,2999,1,'15-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (15,4547,1,'25-Apr-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (15,1899,1,'13-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (35,510,1,'06-Aug-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (9,2186,1,'14-Dec-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (14,2679,0,'23-Aug-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (8,852,0,'22-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (50,4202,1,'26-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (29,1901,1,'24-Nov-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (31,1430,1,'16-Mar-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (18,455,1,'03-Apr-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (1,1231,1,'31-Dec-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (2,4164,0,'13-Dec-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (7,3510,1,'22-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (6,2104,0,'10-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (44,4349,1,'19-Feb-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (24,3332,1,'06-Jun-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (43,841,1,'21-Jul-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (16,2146,0,'27-Sep-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (22,4605,0,'11-Feb-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (48,1330,0,'03-Apr-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (39,1464,0,'08-Mar-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (18,2201,0,'27-Oct-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (36,1252,1,'04-Jul-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (34,2646,1,'01-Apr-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (33,4634,1,'25-Dec-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (8,3484,0,'20-Nov-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (38,1187,0,'13-Nov-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (45,1908,0,'02-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (36,3437,0,'30-Aug-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (12,1286,0,'23-May-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (43,55,1,'23-Feb-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (23,3657,0,'14-Nov-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (32,4661,1,'31-Oct-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (44,996,0,'14-Dec-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (5,3666,1,'10-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (13,4368,1,'19-Dec-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (17,691,1,'07-Mar-2016');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (12,3844,0,'11-Nov-2015');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (1,141,0,'12-Oct-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (8,4598,0,'11-Jan-2017');
INSERT INTO DCUTransaction (accountID,amount,type,transactionDate) VALUES (33,4459,0,'24-Nov-2016');

