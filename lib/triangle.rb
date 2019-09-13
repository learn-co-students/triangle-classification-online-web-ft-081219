require 'pry'

class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
    #binding.pry 
  end 

  
  def kind
    if ((@a == 0 || @b == 0 || @c == 0) || (@a < 0 || @b < 0 || @c < 0) || (@a + @b <= @c || @b + @c <= @a || @c + @b <= @a || @a + @c <= @b))
      begin
        raise TriangleError
      end 
    elsif @a == @b && @a== @c && @b == @c 
      :equilateral
    elsif @a && @c == @a && @c || @a && @b == @a && @b || @b && @c == @b && @c 
      :isosceles
    elsif @a && @b && @c != @a && @b && @c
      :scalene
    
    end 
      
    #binding.pry 
  end 
  
  class TriangleError < StandardError
  end
end
