petPet(
petname VARCHAR(20) PRIMARYKEY, 
owner VARCHAR(45), 
species VARCHAR(45), 
gender CHAR(1) CHECK (gender IN ('M', 'F')),
birth DATE, 
death DATE)

petEvent(
petname VARCHAR(15),
eventdate DATE, 
eventtype VARCHAR(255), 
remark VARCHAR(255))
FOREIGN KEY (petname) REFERENCES petPet(petname),
PRIMARY KEY (petname, eventdate)
