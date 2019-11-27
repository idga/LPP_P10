class PlatoEnergia
	
	include Comparable
	
	attr_accessor :alimentos, :gramos

	@alimentos = List.new()
	@gramos = List.new()

	def initialize(a)
		@alimentos = a
	end

	def set_gramos(g)
		@gramos = g
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
			"#{i.nombre}"
		end
	end

	def <=>(other)
		self.vct <=> other.vct
	end
end
