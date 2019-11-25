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

	def pproteinas
		cantidad = 0
		total = 0
		
		@gramos.each do |i|
			total += i
		end

		@alimentos.each do |j|
			cantidad += j.proteinas
		end

		(cantidad/total)*100
	end
end
