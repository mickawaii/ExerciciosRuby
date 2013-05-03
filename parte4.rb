class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def setName(name)
    @name = name
  end

  def getName
    return @name
  end

  def setCal(calories)
    @calories = calories
  end

  def getCal
    return @calories
  end

  def healthy?
    if @calories < 200
      return true
    end
    return false
  end

  def delicious?
    return true
  end 
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def setFlavor(flavor)
    @flavor = flavor
  end

  def getFlavor
    return @flavor
  end

  def delicious?
    return !(@flavor == 'black licorice')
  end 
end
