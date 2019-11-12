RSpec.describe Prct6 do
  
  it "has a version number" do
    expect(Prct6::VERSION).not_to be nil
  end

  describe Alimento do

	before :each do
		
		@a1 = Alimento.new("Carne de vaca",21.1,0.0,3.1,50.0,164.0)
		@a2 = Alimento.new("Queso",25.0,1.3,33.0,11.0,41.0)
		@a3 = Alimento.new("Leche de vaca",3.3,4.8,3.2,3.2,8.9)
		@a4 = Alimento.new("Cerveza",0.5,3.6,0.0,0.24,0.22)
		@a5 = Alimento.new("Cafe",0.1,0.0,0.0,0.4,0.3)
		@a6 = Alimento.new("Salmon",19.9,0.0,13.6,6.0,3.7)		

		# Hombre
		#@hombre = [@a2,@a2,@a3,@a4,@a5,@a5]

		# Mujer
		#@mujer = [@a1,@a6]
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

		# Prueba carbohidratos
		it "Existe carbohidratos" do
			expect(@a1.carbohidratos).not_to be nil
		end

		# Prueba lípidos
		it "Existe lípidos" do
			expect(@a1.lipidos).not_to be nil
		end

		# Prueba GEI
		it "Existe GEI" do
			expect(@a1.gei).not_to be nil
		end

		# Prueba terreno
		it "Existe terreno" do
			expect(@a1.terreno).not_to be nil
		end
	end

	describe "Información" do
		
		# Prueba mostrar datos
		it "Muestra datos" do
			expect(@a1.to_s).to be nil
		end
	end

	describe "Obtención de datos" do

		# Prueba obtener nombre
		it "Obtiene nombre" do
			expect(@a1.nombre).to eq("Carne de vaca")
		end

		# Prueba obtener proteinas
		it "Obtiene proteinas" do
			expect(@a1.proteinas).to eq(21.1)
		end

		# Prueba obtener carbohidratos
		it "Obtiene carbohidratos" do
			expect(@a1.carbohidratos).to eq(0.0)
		end

		# Prueba obtener lipidos
		it "Obtiene lipidos" do
			expect(@a1.lipidos).to eq(3.1)
		end

		# Prueba obtener GEI
		it "Obtiene GEI" do
			expect(@a1.gei).to eq(50.0)
		end

		# Prueba obtener terreno
		it "Obtiene terreno" do
			expect(@a1.terreno).to eq(164.0)
		end
	end

	describe "Cálculo impactos" do

		# Prueba calculo impacto hombre
		it "Impacto ambiental hombre" do
		
			contve = 0
			contp = 0
			
			@hombre.each do |a|
				contve += a.valorE
				contp += a.proteinas
			end
			expect(contve).to eq(3000)
		end	
	end
  end
end
