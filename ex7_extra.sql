create table person(
  id integer primary key,
  first_name text,
  last_name text,
  age integer
);

create table pet(
  id integer primary key,
  name text,
  breed text,
  age integer,
  dead integer
);

create table person_pet(
  person_id integer,
  pet_id integer
);
insert into person (id, first_name, last_name, age)
  values (0, "Zed", "Shaw", 37);

insert into pet (id, name, breed, age, dead)
  values (0, "Fluffy", "Unicorn", 1000, 0);

insert into pet values (1, "Gigantor", "Robot", 1, 1);
insert into person_pet(person_id, pet_id) values (0, 0);
insert into person_pet values (0, 1);
select * from person;
select name, age from pet;
select name, age from pet where dead = 0;
select * from person where first_name != "Zed";
select pet.id, pet.name, pet.age, pet.dead
  from pet, person_pet, person
  where
  pet.id = person_pet.pet_id AND
  person_pet.person_id = person.id AND
  person.first_name = "Zed";

/* make sure there's dead pets */
select name, age from pet where dead = 1;

/* aww poor robot */
delete from pet where dead = 1;

/* make sure the robot is gone */
select * from pet;

/* let's resurrect the robot */
insert into pet values (1, "Gigantor", "Robot", 1, 0);

/* the robot LIVES! */
select * from pet;
