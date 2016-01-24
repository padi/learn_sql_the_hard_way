delete from pets where id in (
  select pet.id
  from pet, person_pet, person
  where person.id = person_pet.person_id and
  pet.id = person_pet.pet_id and
  person.first_name = "Marc"
);

delete from person_pet
where pet_id not in(
  select id from pet
);

delete from person where id in(
  select person.id
  from person, person_pet, pet
  where person.id = person_pet.person_id and
  pet.id = person_pet.pet_id and
  pet.dead = 1
);

delete from person_pet
where person_id not in(
  select id from person
);
