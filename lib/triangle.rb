class Triangle
  #attr_accessor :num1, :num2, :num3
  # write code here
  
  def initialize(num1, num2, num3)
   @num1 = num1 
   @num2 = num2
   @num3 = num3
  end
  
  def kind()
    if (@num1 <= 0) || (@num2 <= 0) || (@num3 <= 0)
      raise TriangleError
    elsif (@num1+@num2 <= @num3) || (@num1+@num3 <= @num2) || (@num2+@num3 <= @num1)
      raise TriangleError
    else
    if @num1 == @num2 && @num2 == @num3
      return :equilateral
    elsif @num1 == @num2 || @num2 == @num3 || @num1 == @num3
      return :isosceles
    elsif @num1 =! @num2 =! @num3
      return :scalene
    end
  end
  end
    class TriangleError < StandardError
  
    end
end