RSpec.describe Matriz do
  before :each do
    @prueba = Matriz.new()do
      add "Papaya"
    persona "Iris",   
      :peso => "80 kilos", :altura => "1.72", :ojos => "marrones",
      :pelo => "rubio", :pie => "42"
    persona "Zeus",
     :peso => "71 kilos", :altura => "1.71", :ojos => "marrones",
     :pelo => "castaño oscuro", :pie => "43"
    persona "Airam",
     :peso => "72 kilos", :altura => "1.81", :ojos => "verdes",
     :pelo => "castaño oscuro", :pie => "45"

    end
  end
  it "se puede instanciar la matriz" do
    expect(@prueba).not_to eq (nil)
  end 
  it "Se obtiene la matriz correcta" do
    expect(@prueba.to_s).to eq ("[\"Papaya\"]")
  end 
  it "Se obtienen las descripciones correctamente" do
    expect(@prueba.to_s_personas).to eq ("Producto:\n [80 kilos] Iris : 1.72 marrones rubio 42\n [71 kilos] Zeus : 1.71 marrones castaño oscuro 43\n [72 kilos] Airam : 1.81 verdes castaño oscuro 45\n")
  end 
end
