-- test podaci
INSERT INTO "preduzece" ("id", "naziv", "pib", "sediste", "opis")
VALUES ('-100', 'Test preduzece', '109784532', 'Test sediste', 'Test opis');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('-100', 'Test obrazovanje', 'VII-2', 'Test opis');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('-100', 'Test naziv', 'TESTOZN', '1');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('-100', 'Test ime', 'Test prezime', '965734120', '1', '1');

-- preduzece podaci
INSERT INTO "preduzece" ("id", "naziv", "pib", "sediste", "opis")
VALUES ('1', 'AMICUS SRB D.O.O.', '108585471', 'Beograd, Republika Srbija', 'farmaceutska kompanija koja se bavi trgovinom na veliko farmaceutskim proizvodima');
INSERT INTO "preduzece" ("id", "naziv", "pib", "sediste", "opis")
VALUES ('2', 'BERLIN-CHEMIE A. MENARINI DISTRIBUTION D.O.O.', '110102872', 'Beograd, Republika Srbija', 'farmaceutska kompanija koja se bavi trgovinom na veliko farmaceutskim proizvodima');
INSERT INTO "preduzece" ("id", "naziv", "pib", "sediste", "opis")
VALUES ('3', 'VEGA IT d.o.o. Novi Sad', '105723766', 'Novi Sad, Republika Srbija', 'IT kompanija koja razvija softverska resenja po narudzbini i plasira ih na trzista Velike Britanije, Nemacke, Belgije, Holandije i Svajcarske');
INSERT INTO "preduzece" ("id", "naziv", "pib", "sediste", "opis")
VALUES ('4', 'Comtrade Distribution d.o.o. Beograd', '100000104', 'Beograd, Republika Srbija', 'kompanija koja se bavi proizvodnjom racunara i periferne opreme');
INSERT INTO "preduzece" ("id", "naziv", "pib", "sediste", "opis")
VALUES ('5', 'NIS A.D. NOVI SAD', '104052135', 'Novi Sad, Republika Srbija', 'kompanija koja se bavi eksploatacijom sirove nafte');

-- obrazovanje podaci
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('1', 'magistar farmacije', 'VII-2', 'Magistri farmacije mogu se zaposliti u apotekama, predstavnistvima farmaceutskih kompanija, istrazivackim centrima farmaceutskih kompanija, obrazovnim i naucno-istrazivackim institucijama.');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('2', 'diplomirani inzenjer menadzmenta- menadzer ljudskih resursa', 'VII-1', 'Osnovna zaduzenja menadzera ljudskih resursa su: upravljanje ljudima koji individualno i timski doprinose ostvarenju profesionalnih ciljeva, pruzanje zaposlenima mogucnosti da dostignu svoj puni potencijal, omogucavanje da u kompaniji pravi covek bude na pravom mestu.');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('3', 'diplomirani inzenjer menadzmenta- menadzer prodaje', 'VII-1', 'Menadzer prodaje uspesno vlada finansijama, marketingom i vodjenjem projekata. Takodje, njegov zadatak je i da razvija poslovni odnos sa kupcima, resava njihove zahteve, vodi pregovore o korekcijama cena, prati kretanja na domacem i inostranom trzistu i utvrdjuje potrebe buducih trzista i kupaca.');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('4', 'diplomirani inzenjer informacionih tehnologija', 'VII-1', 'Inzenjer informacionih tehnologija je osposobljen za poslove u svim oblastima primene informacionih i komunikacionih tehnologija, kako u privatnom tako i u javnom sektoru.');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('5', 'naftno-petrohemijski inzenjer', 'VII-1', 'Naftno-petrohemijski inzenjer je osposobljen da vodi, unapredjuje i optimizuje postojece hemijsko-tehnoloske procese u skladu sa savremenim standardima kvaliteta, zastite okoline i odrzivog razvoja. ');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('6', 'diplomirani inzenjer menadzmenta- marketing menadzer', 'VII-1', 'Marketing menadzer planira, usmerava i koordinira marketing (cenu, distibuciju i promociju) proizvoda ili usluge.');
INSERT INTO "obrazovanje" ("id", "naziv", "stepen_strucne_spreme", "opis")
VALUES ('7', 'diplomirani ekonomista', 'VII-1', 'Ekonomisti proucavaju troskove i ucinke proizvodnje, raspodelu i potrosnju proizvedenih roba i usluga.');

-- sektor podaci
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('1', 'distribucija', 'SDIS10', '1');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('2', 'prodaja', 'SPR11', '1');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('3', 'nabavka', 'SDNAB12', '2');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('4', 'marketing', 'SMAR13', '2');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('5', 'razvoj', 'SRAZ14', '3');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('6', 'HR', 'SHR15', '3');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('7', 'finansije', 'SFIN16', '4');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('8', 'development', 'SDEV17', '4');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('9', 'kvalitet', 'SKV18', '5');
INSERT INTO "sektor" ("id", "naziv", "oznaka", "preduzece")
VALUES ('10', 'proizvodnja', 'SPROIZ19', '5');

--radnik podaci 
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('1', 'Lenka', 'Subotin', '123456789', '1', '1');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('2', 'Dajana', 'Jelic', '123123456', '3', '2');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('3', 'Ivana', 'Bugadzija', '456789789', '1', '3');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('4', 'Nikola', 'Jovanovic', '345678910', '6', '4');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('5', 'Luka', 'Ivanovic', '310245678', '4', '5');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('6', 'Iva', 'Pantic', '145678932', '4', '8');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('7', 'Sara', 'Poparic', '214536987', '2', '6');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('8', 'Lea', 'Banjac', '789324510', '5', '9');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('9', 'Lazar', 'Peric', '275631098', '7', '7');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('10', 'Una', 'Ilic', '876432501', '5', '10');

INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('11', 'Sofija', 'Petrovic', '966877655', '1', '1');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('12', 'Deana', 'Jovic', '667733441', '3', '2');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('13', 'Simona', 'Rajic', '334455512', '1', '3');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('14', 'Nenad', 'Ristic', '112233456', '6', '4');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('15', 'Ivan', 'Tesanovic', '103247859', '4', '5');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('16', 'Tea', 'Todorovic', '876934567', '4', '8');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('17', 'Helena', 'Radulovic', '678945310', '2', '6');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('18', 'Ena', 'Popov', '765436789', '5', '9');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('19', 'Anja', 'Delic', '203456789', '7', '7');
INSERT INTO "radnik" ("id", "ime", "prezime", "broj_lk", "obrazovanje", "sektor")
VALUES ('20', 'Ksenija', 'Jovic', '782113456', '5', '10');

