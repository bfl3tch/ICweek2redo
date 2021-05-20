class Zoo

  attr_reader :name, :street, :city, :state, :zip_code, :inventory

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
  end

  def address
    "#{street} #{city}, #{state} #{zip_code}"
  end

  def animal_count
    @inventory.length
  end

  def add_animal(animal)
    @inventory << animal
  end

  def animals_older_than(old_age)
    @inventory.select.count { |animal_age| (animal_age.age.to_i>old_age) }
  end

  def total_weight_of_animals
    @inventory.map.sum { |animal| (animal.weight.to_i) }
  end

  def details
    {
      "total_weight" => total_weight_of_animals,
      "street_address" => "#{self.street}",
      "city" => @city,
      "state" => @state,
      "inventory" => @inventory
    }
  end

  def animals_sorted_by_weight
    @inventory.map.sort_by { |animal| animal.weight }
    # @inventory.map { |animal| animal.weight.to_i.sort.to_h}
  end

  def animal_hash
    # .reduce
    @inventory.map { |animal| ["C" "D" "R" "S"] }.to_h

  end
end
