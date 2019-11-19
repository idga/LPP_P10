RSpec.describe List do
	
	before :each do
		@a1 = Alimento.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
		@a2 = Alimento.new("Queso",25.0,1.3,33.0,11.0,41.0)
                @a3 = Alimento.new("Leche de vaca",3.3,4.8,3.2,3.2,8.9)
		@l = List.new()
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
			expect(@l1.empty).to be true
		end
	end
end
