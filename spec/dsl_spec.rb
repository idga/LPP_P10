RSpec.describe PlatoDSL do

	before :each do

		@p1 = PlatoDSL.new("Hamburguesa") do
			ingrediente "Carne", :gramos => "100"
			ingrediente "Lechuga", :gramos => "20"
			ingrediente "Tomate", :gramos => "150"
			ingrediente "Salsa", :gramos => "50"
		end
	end
		
	context 'Pruebas plato' do
		it "Se crea plato DSL" do
			puts @p1
			expect(@p1.to_s).not_to be nil
		end
	end
end