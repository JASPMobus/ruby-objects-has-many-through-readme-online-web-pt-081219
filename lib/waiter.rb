class Waiter
  attr_reader :name, :years_of_experience, :meals, :best_tip, :best_tipper 
  
  @@all = []
  
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @meals = []
    
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip)
    @meals.push(Meal.new(self, customer, total, tip))
  end 
end