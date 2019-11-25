RSpec.describe PlatoEnergia do


	before :each do
		
		@a1 = Alimento.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
                @a2 = Alimento.new("Queso",25.0,1.3,33.0,11.0,41.0)
                @a3 = Alimento.new("Leche de vaca",3.3,4.8,3.2,3.2,8.9)
                @a4 = Alimento.new("Cerveza",0.5,3.6,0.0,0.24,0.22)
                @a5 = Alimento.new("Cafe",0.1,0.0,0.0,0.4,0.3)
                @a6 = Alimento.new("Salmon",19.9,0.0,13.6,6.0,3.7)
                @a7 = Alimento.new("Chocolate",5.3,47.0,30.0,2.3,3.4)
                @a8 = Alimento.new("Lentejas",23.5,52.0,1.4,0.4,3.4)
                @a9 = Alimento.new("Nuez",20.0,21.0,54.0,0.3,7.9)
                @a10 = Alimento.new("Huevo",13.0,1.1,11.0,4.2,5.7)
                @a11 = Alimento.new("Tofu",8.0,1.9,4.8,2.0,2.2)

		@v1 = [@a1,@a2,@a3]

		@pe1 = PlatoEnergia.new(@v1)

	end

	context 'Estructura plato' do

		it "Existe plato" do
			expect(@pe1).not_to be nil
		end

		it "Existe conjunto de alimentos" do
			expect(@pe1.alimentos).not_to be nil
		end
	end

	
end
