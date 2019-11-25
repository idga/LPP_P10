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

	def plipidos
		cantidad = 0
		total = 0

		@gramos.each do |i|
			total += i
		end

		@alimentos.each do |j|
			cantidad += j.lipidos
		end

		(cantidad/total)*100
	end

	def pcarbohidratos
		cantidad = 0
		total = 0

		@gramos.each do |i|
			total += i
		end

		@alimentos.each do |j|
			cantidad += j.carbohidratos
		end

		(cantidad/total)*100
	end

	def vct
		cont = 0

		@alimentos.each do |i|
			cont += i.valorE()
		end

		return cont
	end

	def to_s
		@alimentos.each do |i|
			puts i.nombre
		end

		return "---------"
	end
end
