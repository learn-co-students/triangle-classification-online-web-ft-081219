class Triangle
  # write code here

  def initialize(a,b,c)
    @sides=[]
    @sides.push(a)
    @sides.push(b)
    @sides.push(c)
  end

  def sides
    @sides
  end

  #MAY NOT WORK IF REPEATED NUMBERS ARE INVOLVED - #INDEX FINDS THE FIRST ITEM WITH THAT VALUE
  def hypotenuse_test(array)
    array.map.with_index{|a,i|a+array[i-1]>array[i-2]}.all?
  end

  def equilateral_test(array)
    array.collect.with_index{|a,i|a+array[i-1]==(2*array[i-2])}.all?
  end

  def isosceles_test(array)
    array.map.with_index{|a,i|a==array[i-1]}.any?
  end

  def kind
    if sides.any?{|a|a==0} || !hypotenuse_test(sides)
      raise TriangleError
    elsif equilateral_test(sides)
      :equilateral
    elsif isosceles_test(sides)
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid triangle!"
    end
  end

end
