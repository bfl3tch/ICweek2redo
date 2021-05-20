class Animal

  attr_reader :kind, :weight, :age

  def initialize(kind, weight, age)
    @kind = kind
    @weight = weight.to_s + " pounds"
    @age = age.to_s + " weeks"
  end

  def age_in_days
    @age.to_i * 7
  end

  def feed!(amount)
    @weight = (@weight.to_i + amount).to_s + " pounds"
  end


end
