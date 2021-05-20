require 'rspec'
require './lib/animal'
require './lib/zoo'

RSpec.describe Zoo do
  it 'exists' do
   zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
   expect(zoo).to be_a(Zoo)
 end

  it 'has readable attributes' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    expect(zoo.state).to eq("NY")
    expect(zoo.name).to eq("Bronx Zoo")
  end

  it 'has an address method to call it all' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    expect(zoo.address).to eq("2300 Southern Blvd Bronx, NY 10460")
  end

  it 'has an adjustable inventory' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    expect(zoo.inventory).to eq([])
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)
    expect(zoo.animal_count).to eq(2)
  end
#iteration 2 completed 55 minutes
#iteration3

  it 'has an readable inventory' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    expect(zoo.inventory).to eq([])
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)
    expect(zoo.animal_count).to eq(2)
    expect(zoo.animals_older_than(250)).to eq(0)
    animal_3 = Animal.new("Red Panda", 5, 300)
    zoo.add_animal(animal_3)
    expect(zoo.animals_older_than(250)).to eq(1)
    expect(zoo.animals_older_than(10)).to eq(3)
    expect(zoo.total_weight_of_animals).to eq(20)
  end

  it 'has an readable inventory' do
    zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    animal_3 = Animal.new("Red Panda", 5, 300)
    zoo.add_animal(animal_3)
    zoo.add_animal(animal_1)
    zoo.add_animal(animal_2)
    expect(zoo.details).to be_a(Hash)
    expect(zoo.details).to include("total_weight" => 20, "street_address" => "2300 Southern Blvd")
  end
#iteration3 done 1 hour 35 minutes
#iteration4 ran out time on animal_hash
it 'can sort by weight' do
  zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
  animal_1 = Animal.new("Sea Otter", 10, 25)
  animal_2 = Animal.new("Red Panda", 5, 70)
  animal_3 = Animal.new("Dolphin", 7, 300)
  zoo.add_animal(animal_1)
  zoo.add_animal(animal_2)
  zoo.add_animal(animal_3)
  expect(zoo.animals_sorted_by_weight).to be_an(Array)
  expect(zoo.animals_sorted_by_weight).to eq([animal_1, animal_2, animal_3])
end

it 'can make an animal hash' do
  zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
  animal_1 = Animal.new("Sea Otter", 10, 25)
  animal_2 = Animal.new("Red Panda", 5, 70)
  animal_3 = Animal.new("Dolphin", 7, 300)
  zoo.add_animal(animal_1)
  zoo.add_animal(animal_2)
  zoo.add_animal(animal_3)
  expect(zoo.animals_sorted_by_weight).to be_an(Array)
  expect(zoo.animals_sorted_by_weight).to eq([animal_1, animal_2, animal_3])
  expect(zoo.animal_hash).to be_a(Hash)
end

end
