require 'lib/fraccion.rb'
 
racional = Racional.new(3.0,5.0)
  racional2 = Racional.new(20.0,8.0)
  racional.simplificar
  racional2.simplificar
describe Racional do 

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
