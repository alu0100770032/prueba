RSpec.describe Matriz do
  before :each do
    @prueba = Matriz.new(){}
  end
  it "se puede instanciar la matriz" do
    expect(@prueba).not_to eq (nil)
  end 
end
