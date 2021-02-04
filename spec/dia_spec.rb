RSpec.describe Dia do
  @prueba = dia.new()
  it "se puede instanciar la matriz" do
    expect(@prueba).not_to eq (nil)
  end 
end
