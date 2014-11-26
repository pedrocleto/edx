class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    # your code here
    @name = name
    @calories = calories
  end
  def healthy?
    # your code here
    return true if calories<200
  end
  def delicious?
    # your code here
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    super(flavor + " jelly bean", 5)
    @flavor = flavor
  end
  def delicious?
    # your code here
    return true unless flavor == "licorice"
  end
end
