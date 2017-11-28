# Finish the implementation of the Car class so it has the functionality described below

class Car
  attr_accessor :make, :model
  @@all = []

  def initialize (make:, model:)
    @make = make
    @model = model
    @@all << self
  end

  def drive
    puts "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end

# car1 = Car.new("volvo", "lightening")
car = Car.new(make: "volvo", model: "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

# BONUS:



car1.make
#=> "volvo"
car1.model
#=> "ligthening"
