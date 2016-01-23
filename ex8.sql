-- delete all pets with id in
delete from pet where id in (
  -- get all pet ids of Zed's pets
  select pet.id
  from pet, person_pet, person
  where
  person.id = person_pet.person_id and
  pet.id = person_pet.pet_id and
  person.first_name = "Zed"
);

select * from pet;
select * from person_pet;

-- delete all entries in person_pet table
delete from person_pet
  -- where pet_id is not in
  where pet_id not in (
    -- the ids of all of pets
    select id from pet
  );

select * from person_pet;


-- in a query... the query
-- within the `in (...)` is
-- called a subquery/subselect
