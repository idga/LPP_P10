RSpec.describe Prct6 do
  
  it "has a version number" do
    expect(Prct6::VERSION).not_to be nil
  end

  describe Alimento do

	before :each do
		@a1 = Alimento.new()
	end

	# Prueba creación Alimento
	it "Se crea Alimento" do
		expect(@a1).not_to be nil
	end

	describe "Creacion de datos" do

		it "Existe nombre" do
			expect(@a1.nombre).not_to be nil
		end
	end
  end
end
