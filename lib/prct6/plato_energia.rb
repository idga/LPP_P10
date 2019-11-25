class PlatoEnergia

	attr_accessor :alimentos, :gramos

	@alimentos = List.new()

	def initialize(a)
		@alimentos = a
	end

	def set_gramos
		@gramos = List.new()
		@alimentos.each do |i|
			@gramos.insert(i.cantidad) 
		end
	end
end
