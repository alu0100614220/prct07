require 'lib/fraccion.rb'
 
racional = Racional.new(3.0,5.0)
  racional2 = Racional.new(20.0,8.0)
  racional.simplificar
  racional2.simplificar
describe Racional do 
describe "Basicos" do
  it "Debe existir un numerador igual a 3.0" do
    racional.num.should be_close 3.0 , 0.1
  end
  it "Debe existir un denominador igual a 5" do
    racional.den.should eql(5.0)
  end
  it "Debe mostrar la fraccion de forma 3.0/5.0" do
    racional.show.should eql("3.0/5.0") 
  end
  it "Debe mostrar la forma flotante de la fraccion" do
    racional.decimal.should be_close 0.6,0.1
  end
end


describe "Operaciones" do
    it "La suma de 3/5 con 20/8 tiene que ser 31.0/10 " do
    (racional+racional2).show.should eql("31.0/10.0")
  end
    it "La resta de 3/5 con 20/8 tiene que ser -19.0/10 " do
    (racional-racional2).show.should eql("-19.0/10.0")
  end
  it "La multiplicacion de 3/5 con 20/8 tiene que ser 3.0/2.0 " do
    (racional*racional2).show.should eql("3.0/2.0")
  end
  it "La division de 3/5 con 20/8 tiene que ser 6.0/25 " do
    (racional/racional2).show.should eql("6.0/25.0")
  end
end

describe "Unitarios" do
  
  it "La fraccion 3/5 tiene que ser igual a 3/5" do
    (racional==racional).should equal(1)
  end
  it "La fraccion 3/5 debe ser menor que 20/8 " do
    (racional<racional2).should eql(1)
  end
   it "La fraccion 3/5 debe ser mayor que 20/8" do
    (racional>racional2).should eql(1)
  end
  it "La fraccion 3/5 debe ser menor o igual que 20/8 " do
    (racional<=racional2).should eql(1)
  end
   it "La fraccion 3/5 debe ser mayor o igual que 20/8 " do
    (racional>=racional2).should eql(1)
  end
end
end