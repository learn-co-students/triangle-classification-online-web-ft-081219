class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3


  end
#
  def kind
    if  @side1 <= 0 || @side2 <= 0 || @side3 <= 0
      
      begin
        raise TriangleError
        #rescue TriangleError => error
          # puts error.message
      end # for begin   
    end

    if @side1 + @side2 <= @side3 or @side1 + @side3 <= @side2 or @side2 + @side3 <= @side1
      begin
        raise TriangleError
      end
    else
      puts 
      p "we got past the error"
      answer = ""
      if @side1 == @side2 && @side1 == @side3
        answer = "equilateral"
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        answer = "isosceles"
      elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
        answer = "scalene"
      else
        p "nothing"
      end
    end 
#end #for if
    
    trianswer = answer.intern  
    p trianswer       

  end



  class TriangleError < StandardError
    # triangle error code
    def message
      "AHHH"
    end


  end



end
