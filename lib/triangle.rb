class Triangle
   attr_accessor :s_1, :s_2, :s_3, :illegal

    def initialize(s_1, s_2, s_3)
      @s_1 = s_1  #   @equilateral = equilateral
      @s_2 = s_2  #   @isosceles = isosceles
      @s_3 = s_3  #   @scalene = scalene
      @illegal = illegal 
    end  

    def equilateral    # equilateral   #three sides are equal and the three angles are equal
      if  s_1 == s_2 && s_2 == s_3
        true
      else 
        false 
      end 
    end 

    def isosceles  # has three sides an three angles  # two sides and two angles have to equal the same measurement
      if (s_1 == s_2 || s_2 == s_3 || s_1 == s_3) 
        true 
      else 
        false 
      end 
    end 
    
    def scalene # has three sides and three angles   # no sides or angles are the same measurement. 
      if (s_1 != s_2 && s_2 != s_3) 
        true 
      else 
        false 
      end 
    end 

    def kind
      return :equilateral if equilateral 
      return :isosceles if isosceles 
      return :scalene if scalene
      return :illegal if illegal
    end 

    def illegal 
          if (s_1 == 0 || s_2 == 0  || s_3 == 0) || (s_1 < 0 || s_2 < 0 ||s_3 < 0) || (s_1 + s_2 <= s_3 || s_2 + s_3 <= s_1 || s_1 + s_3 <= s_2 )
            raise TriangleError 
          else 
            true 
          end 
        end 
        
      class TriangleError < StandardError 
      
        # def illegal 
        #   if (s_1 = 0 && s_2 =0  && s_3 =0)
        #     binding.pry 
        #     true 
        #   else 
        #     false 
        #   end 
        # end 
      end 
    end 