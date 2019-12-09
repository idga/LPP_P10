# Autor:: 	Isaac Daniel Garcia Armas
# Web::		https://github.com/ULL-ESIT-LPP-1920/tdd-idga
#
# == Clase PlatoEnergia
# Clase para representar un _Plato Energia_
# * metodo initialize
# * metodo set_gramos
# * metodo pproteinas
# * metodo plipidos
# * metodo pcarbohidratos
# * metodo vct
# * metodo to_s
# * metodo <=>
# * metodo indice_energia

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
		@alimentos.inject(0){|c,a| c + a.valorE()}
	end

	def to_s
		@alimentos.each do |i|
			"#{i.nombre}"
		end
	end

	def <=>(other)
		self.vct <=> other.vct
	end

	def indice_energia
	
		v = self.vct
		
		if v < 670
			return 1
		elsif v >= 670 && v <= 830
			return 2
		else
			return 3
		end
	end
end
