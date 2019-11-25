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

		# Lista de ejemplo
		@l1 = List.new()
		@l1.insert(@a1)
		@l1.insert(@a2)
		@l1.insert(@a3)

		# Plato de ejemplo
		@pe = PlatoEnergia.new(@l1)
		@pe.set_gramos()

		# Plato de ejemplo (hijo)
		@pe2 = PlatoAmbiental.new(@l1)


		#### Dietas ####

		@dieta_espanola = List.new()
		@al1 = [@a1,@a2,@a8,@a10]    # Alimentos <- Alimento
		@pa1 = PlatoAmbiental.new(@al1) # Plato <- Alimentos
		@dieta_espanola.insert(@pa1) # Dieta <- Plato

               	# Dieta vasca
                @dieta_vasca = List.new()
		@al2 = [@a1,@a1,@a1,@a10]
		@al21 = [@a10,@a10,@a1]
		@al22 = [@a1,@a1,@a10]
                @pa2 = PlatoAmbiental.new(@al2)
		@pa21 = PlatoAmbiental.new(@al21)
		@pa22 = PlatoAmbiental.new(@al22)
		@dieta_vasca.insert(@pa2)
		@dieta_vasca.insert(@pa21)
		@dieta_vasca.insert(@pa22)                

		# Dieta vegetaria
                @dieta_vegetaria = List.new()
                @al3 = [@a10,@a10,@a3,@a3]
                @pa3 = PlatoAmbiental.new(@al3)
                
		# Dieta vegetariana
                @dieta_vegetariana = List.new()
                @al4 = [@a5,@a7,@a8,@a9,@a11]
                @pa4 = PlatoAmbiental.new(@al4)
                
		# Dieta carne
                @dieta_carne = List.new()
                @al5 = [@a1,@a1,@a10,@a10]
                @pa5 = PlatoAmbiental.new(@al5)
	end

	context 'Estructura plato' do

		it "Existe plato" do
			expect(@pe).not_to be nil
		end

		it "Existe conjunto de alimentos" do
			expect(@pe.alimentos).not_to be nil
		end

		it "Existe conjunto de cantidades de alimentos en gramos" do
			expect(@pe.gramos).not_to be nil
		end
	end

	context 'Informacion' do

		it "Porcentaje proteinas" do
			expect(@pe.pproteinas.round(2)).to be(49.23)
		end

		it "Porcentaje lipidos" do
			expect(@pe.plipidos.round(2)).to eq(29.61)
		end

		it "Porcentaje hidratos de carbono" do
			expect(@pe.pcarbohidratos.round(2)).to eq(4.26)
		end

		it "Valor Calorico Total" do
			expect(@pe.vct.round(2)).to eq(688.0)
		end

		it "Plato formateado" do
			expect(@pe.to_s).not_to be nil
		end
	end

	context 'Pruebas plato ambiental' do
		
		it "Valor GEI" do
			expect(@pe2.gei.round(2)).to eq(114.2)
		end

		it "Estimacion terreno" do
			expect(@pe2.terreno.round(2)).to eq(377.9)
		end

		it "Clase del objeto" do
			expect(@pe2.class).to eq(PlatoAmbiental)
		end

		it "Clase del padre" do
			expect(@pe2.class.superclass).to eq(PlatoEnergia)
		end

		it "Ancestros" do
			expect(@pe2.class.ancestors.include? (Object)).to be true
			expect(@pe2.class.ancestors.include? (BasicObject)).to be true
		end

		it "Prueba de tipo" do
			expect(@pe2).to be_a_kind_of(PlatoAmbiental)
			expect(@pe2).to be_a_kind_of(PlatoEnergia)
		end
	end

	context 'Comparacion de platos' do

		it "Prueba <" do
			expect(@pa2 < @pa1).to be true
		end

		it "Prueba >" do
			expect(@pa1 > @pa2).to be true
		end

		it "Prueba ==" do
			expect(@pa1 == @pa1).to be true
		end
	end
	
	context 'Enumeracion de platos' do
		it "Metodo min" do
			expect(@dieta_vasca.min).to eq(@pa22)
		end

		it "Metodo max" do
			expect(@dieta_vasca.max).to eq(@pa2)
		end
		
		it "Metodo select" do
                        expect(@dieta_vasca.select {|i|}).to eq([])
                end

                it "Metodo collect" do
                        expect(@dieta_vasca.collect {|i| (i.vct+0).round(2)}).to eq([492.3, 492.3, 423.1, 380])

		end
	        
		it "Metodo sort" do
                        expect(@dieta_vasca.sort).to eq([@pa22,@pa21,@pa2,@pa2])
                end   
	end
end
