RSpec.describe Matriz do
  before :each do
    @prueba = Matriz.new(){
      
    }
  end
  it "se puede instanciar la matriz" do
    expect(@prueba).not_to eq (nil)
  end 
  it "Se obtiene la matriz correcta" do
    expect(@prueba.to_s).to eq ("[]")
  end 
end
