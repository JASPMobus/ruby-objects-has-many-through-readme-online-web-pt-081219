class Waiter
  attr_reader :name, :years_of_experience, :meals, :tips
  
  @@all = []
  
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @meals = []
    @tips = []
    
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip)
    @tips.push(tip)
    @meals.push(new Meal(self, customer, total, tip))
end