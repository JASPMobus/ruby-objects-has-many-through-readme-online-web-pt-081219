class Customer
  attr_reader :name, :age, :meals
  
  @@all = []
  
  def initialize(name, age)
    @name = name
    @age = age
    @meals = []
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end
end