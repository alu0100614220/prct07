class Racional
  def initialize(num,dem)
        @num = num
        @den = dem
	self.simplificar
  end
  def num
    @num
  end
    def den
    @den
  end
  def show
    "#{@num}/#{@den}"
  end
  def decimal
   dec = @num/@den
  end
  def mcd(a,b)
    while b != 0
        a,b = b,a%b
    end
    a
  end
  def mcm(a,b)  
                (a/mcd(a,b))*b
  end
  def simplificar 
    num = @num/mcd(@num,@den)
    den = @den/mcd(@num,@den)
    @num=num
    @den=den
  end

  def operator==(Racional A)
    aux = 0
    if ((self.num == A.num) && (self.den == A.den)) then
      aux = 1
    end
    aux
  end
  
  def operator+ (Racional A)
    B = Racional.new(0,0)
    B.den = mcm(@den,den)
    B.num = ((B.den/self.den) * self.num ) + ((B.den/A.den) * A.num)
    B
  end
  
  def operator- (Racional A)
    B = Racional.new(0,0)
    B.den = mcm(@den,den)
    B.num = ((B.den/self.den) * self.num ) - ((B.den/A.den) * A.num)
    B
  end
  
  def operator* (Racional A)
    B = Racional.new(0,0)
    B.num = self.num * A.num
    B.den = self.den * A.den
    B
  end
  
  def operator/ (Racional A)
    B = Racional.new(0,0)
    B.num = self.num * A.den
    B.den = self.den * A.num
    B
  end
  
  def operator< (Racional A)
    aux = 0
    if (self.decimal < A.decimal) then
        aux = 1
      end
      aux
   end

   def operator> (Racional A)
    aux = 0
    if (self.decimal > A.decimal) then
        aux = 1
      end
      aux
   end
   
     def operator<= (Racional A)
    aux = 0
    if (self.decimal <= A.decimal) then
        aux = 1
      end
      aux
   end
     def operator>= (Racional A)
    aux = 0
    if (self.decimal >= A.decimal) then
        aux = 1
      end
      aux
   end
   
end 
