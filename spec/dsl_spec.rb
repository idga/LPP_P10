RSpec.describe PlatoDSL do

	before :each do
		
		# Definicion de plato
		@p1 = PlatoDSL.new("Hamburguesa", 200, 150) do
			ingrediente "Carne", :gramos => "100"
			ingrediente "Lechuga", :gramos => "20"
			ingrediente "Tomate", :gramos => "150"
			ingrediente "Salsa", :gramos => "50"
		end
		
		@p2 = PlatoDSL.new("Papas fritas", 100, 80) do
			ingrediente "Papas", :gramos => "30"
			ingrediente "Aceite", :gramos => "10"
			ingrediente "Sal", :gramos => "5"
		end
		
		@p3 = PlatoDSL.new("Refresco", 160, 120) do
			ingrediente "Agua", :gramos => "100"
			ingrediente "Gaseosa", :gramos => "200"
			ingrediente "Azucar", :gramos => "20"
		end
		
		# Definicion de menu
		@m1 = MenuDSL.new("McCombo",10) do
			plato @p1
			plato @p2
			plato @p3
		end
	end
		
	context 'Pruebas plato' do
		it "Se crea plato DSL" do
			#puts @p1
			expect(@p1.to_s).not_to be nil
		end
	end
	
	context 'Pruebas menu' do
		it "Se crea plato DSL" do
			puts @m1
			puts @p1
			puts @p2
			puts @p3
			expect(@m1.to_s).not_to be nil
		end
	end
end