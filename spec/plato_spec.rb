RSpec.describe Plato do


	before :each do
		@p1 = Plato.new()

	end

	context 'Estructura plato' do

		it "Existe plato" do
			expect(@p1).not_to be nil
		end
	end
end
