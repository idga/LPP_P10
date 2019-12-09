RSpec.describe PlatoEnergia do

	before :each do
		
		# Alimentos
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
		
		# Platos
		@l1 = List.new()
		@l1.insert(@a4)
		@l1.insert(@a1)
		@l1.insert(@a6)
		@l1.insert(@a7)
		
		@p1 = PlatoAmbiental.new(@l1)
		
		@l2 = List.new()
		@l2.insert(@a11)
		@l2.insert(@a8)
		@l2.insert(@a9)
		
		@p2 = PlatoAmbiental.new(@l2)
		
		@l3 = List.new()
		@l3.insert(@a3)
		@l3.insert(@a10)
		@l3.insert(@a5)
		
		@p3 = PlatoAmbiental.new(@l3)
		
		# Menu
		@menu = List.new()
		@menu.insert(@p1)
		@menu.insert(@p2)
		@menu.insert(@p3)
		
		# Precios
		@precios = List.new()
		@precios.insert(6.50)
		@precios.insert(15.00)
		@precios.insert(4.50)
	end
	
	context 'Huella nutricional - Plato' do
		
		it "Impacto Energia" do
			expect(@p1.indice_energia()).to eq(2)
			expect(@p2.indice_energia()).to eq(3)
			expect(@p3.indice_energia()).to eq(1)
		end
		
		it "Impacto Carbono" do
			expect(@p1.indice_carbono()).to eq(1)
			expect(@p2.indice_carbono()).to eq(1)
			expect(@p3.indice_carbono()).to eq(1)
		end
		
		it "Huella nutricional" do
			expect(@p1.huella_nutricional()).to eq(1)
			expect(@p2.huella_nutricional()).to eq(2)
			expect(@p3.huella_nutricional()).to eq(1)
		end
	end
	
	context 'Huella nutricional - Menu' do
	
		it "Energia total" do
			expect(@menu.inject(0){|c,m| c + m.vct()}).to eq(3061.0)
		end
		
		it "Carbono total" do
			expect(@menu.inject(0){|c,m| c + m.gei()}).to eq(133.26)
		end
		
		it "Plato con mayor Huella Nutricional" do
			expect(@menu.max).to eq(@p1)
		end
	end
end