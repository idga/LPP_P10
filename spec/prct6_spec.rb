RSpec.describe Prct6 do
  
  it "has a version number" do
    expect(Prct6::VERSION).not_to be nil
  end

  describe Alimento do

	before :each do
		@a1 = Alimento.new("Carne de vaca")
	end

	# Prueba creación Alimento
	it "Se crea Alimento" do
		expect(@a1).not_to be nil
	end

	describe "Creacion de datos" do
		
		# Prueba nombre
		it "Existe nombre" do
			expect(@a1.nombre).not_to be nil
		end

		# Prueba proteínas
		it "Existe proteinas" do
			expect(@a1.proteinas).not_to be nil
		end
	end
  end
end
