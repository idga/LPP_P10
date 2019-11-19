RSpec.describe List do
	
	before :each do
		@a1 = Alimento.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
		@l = List.new()
	end

	context 'Modificaciones lista' do

		it "Insercion" do
			expect(@l.insert(@a1)).equal?(Node)
		end
	end
end
