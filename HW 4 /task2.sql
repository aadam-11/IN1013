INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'Hamster', 'M', '2010-10-30'); 

UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'vet', 'broken rib');

INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Claws', 'Fluffy', 'Kitten', 'M', '2020-09-01'); 

DELETE FROM petPet 
WHERE owner = 'Harold';
