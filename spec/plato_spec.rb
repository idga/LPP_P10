RSpec.describe PlatoEnergia do


	before :each do
		@pe1 = PlatoEnergia.new()

	end

	context 'Estructura plato' do

		it "Existe plato" do
			expect(@pe1).not_to be nil
		end
	end
end
