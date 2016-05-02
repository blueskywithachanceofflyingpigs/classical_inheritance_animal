module Flight
  def fly
    if self.class.name == "Parrot"
      "I'm a parrot, I'm flying!"
    else
      "Most birds can fly. Like me!"
    end
  end
end

class Animal
  attr_reader :alive
  def initialize(alive)
    @alive = true
  end
end

class Bird < Animal
  include Flight
  attr_reader :warm_blooded
  def initialize(alive, warm_blooded)
    super(alive)
    @warm_blooded = true
  end
end

class Bat < Bird
  attr_accessor :blood_eater
  def initialize(blood_eater)
    super(alive, warm_blooded)
    @blood_eater = true
  end
end

class Parrot < Bird
  attr_accessor :talks
  def initialize(talks)
    @talks = true
  end
end

parrot = Parrot.new(true)

p parrot.fly

bat = Bat.new(true)

bat::blood_eater = false

p bat::blood_eater






