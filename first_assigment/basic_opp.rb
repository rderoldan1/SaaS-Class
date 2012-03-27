class Dessert
  attr_accessor(:name, :calories)

  def initialize(name, calories)
    self.name, self.calories = name , calories
  end

  def healthy?
    calories < 200
  end
  def delicious?
    true
  end
end
class JellyBean < Dessert
  attr_accessor(:flavor)

  def initialize(name, calories, flavor)
    super(name, calories)
    self.flavor = flavor

  end
  def delicious?
    flavor != "black licorerice"
  end
end