RSpec.describe List do
	
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

		@l = List.new()
		
		# Dieta espanola
		@dieta_espanola = List.new()
		@dieta_espanola.insert(@a1)
		@dieta_espanola.insert(@a2)
		@dieta_espanola.insert(@a8)
		@dieta_espanola.insert(@a10)

		# Dieta vasca
		@dieta_vasca = List.new()
		@dieta_vasca.insert(@a1)
		@dieta_vasca.insert(@a1)
		@dieta_vasca.insert(@a1)
		@dieta_vasca.insert(@a10)

		# Dieta vegetaria
		@dieta_vegetaria = List.new()
		@dieta_vegetaria.insert(@a10)
		@dieta_vegetaria.insert(@a10)
		@dieta_vegetaria.insert(@a3)
		@dieta_vegetaria.insert(@a3)

		# Dieta vegetariana
		@dieta_vegetariana = List.new()
		@dieta_vegetariana.insert(@a5)
		@dieta_vegetariana.insert(@a7)
		@dieta_vegetariana.insert(@a8)
		@dieta_vegetariana.insert(@a9)
		@dieta_vegetariana.insert(@a11)

		# Dieta carne
		@dieta_carne = List.new()
		@dieta_carne.insert(@a1)
		@dieta_carne.insert(@a1)
		@dieta_carne.insert(@a10)
		@dieta_carne.insert(@a10)
	end

	context 'Modificaciones lista' do

		it "Insercion" do
			expect(@l.insert(@a1)).equal?(Node)
		end

		it "Insercion multiple" do
			expect(@l.insert(@a1)).equal?(Node)
			expect(@l.insert(@a2)).equal?(Node)
			expect(@l.insert(@a3)).equal?(Node)
		end

		it "Lista vacia" do
			expect(@l.empty).to be true
		end

		it "Extraccion por la cabeza" do
			expect(@l.insert(@a1)).equal?(Node)
			expect(@l.empty).to be false
			expect(@l.shift).equal?(Node)
			expect(@l.empty).to be true
		end

		it "Extraccion por la cola" do
			expect(@l.insert(@a1)).equal?(Node)
			expect(@l.insert(@a2)).equal?(Node)
			expect(@l.empty).to be false
			expect(@l.pop).equal?(Node)
		end
	end

	context 'Consultas lista' do

		it "Devuelve tamaño" do
			expect(@l.empty).to be true
			expect(@l.insert(@a1)).equal?(Node)
			expect(@l.insert(@a2)).equal?(Node)
			expect(@l.size).to eq(2) 
		end
	end

	context 'Dietas' do

		it "Emision gases efecto invernadero (diarias)" do
			expect(@dieta_espanola.gei).to eq(65.6)
			expect(@dieta_vasca.gei).to eq(154.2)
			expect(@dieta_vegetaria.gei).to eq(14.8)
			expect(@dieta_vegetariana.gei).to eq(5.3999999999999995)
			expect(@dieta_carne.gei).to eq(108.4)
		end

		it "Emisiones gases efecto invernadero (anuales)" do
			expect(@dieta_espanola.gei * 365).to eq(23943.999999999996)
			expect(@dieta_vasca.gei * 365).to eq(56282.99999999999)
			expect(@dieta_vegetaria.gei * 365).to eq(5402.0)
			expect(@dieta_vegetariana.gei * 365).to eq(1970.9999999999998)
			expect(@dieta_carne.gei * 365).to eq(39566.0)
		end

		it "Uso de terreno" do
			expect(@dieta_espanola.terreno).to eq(214.1)
			expect(@dieta_vasca.terreno).to eq(497.7)
			expect(@dieta_vegetaria.terreno).to eq(29.200000000000003)
			expect(@dieta_vegetariana.terreno).to eq(17.2)
			expect(@dieta_carne.terreno).to eq(339.4)
		end
	end

	context 'Recorrido' do

		it "Metodo min" do
			expect(@dieta_espanola.min).to eq(@a1)
		end

		it "Metodo max" do
			expect(@dieta_espanola.max).to eq(@a2)
		end

		it "Metodo select" do
			expect(@dieta_espanola.select {|i|}).to eq([])
		end

		it "Metodo collect" do
			expect(@dieta_espanola.collect {|i| i.terreno+0}).to eq([164.0,164.0,41.0,3.4,5.7])
		end

		it "Metodo sort" do
			expect(@dieta_espanola.sort).to eq([@a1,@a1,@a10,@a8,@a2])
		end
	end
end
