# Autor:: 	Isaac Daniel Garcia Armas
# Web::		https://github.com/ULL-ESIT-LPP-1920/tdd-idga
#
# == Clase Alimento
# Clase para representar un _Alimento_
# * metodo initialize
# * metodo to_s
# * metodo valorE
# * metodo cantidad
# * metodo <=>

require "prct6/version"

class Alimento

	attr_accessor :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

	include Comparable

	def initialize(n,p,c,l,g,t)
		@nombre = n
		@proteinas = p
		@carbohidratos = c
		@lipidos = l
		@gei = g
		@terreno = t
	end

	def to_s

		puts "-- #{@nombre} --"
		puts "Proteinas: #{@proteinas}"
		puts "Carbohidratos: #{@carbohidratos}"
		puts "Lipidos: #{@lipidos}"
		puts "GEI: #{@gei}"
		puts "Terreno: #{@terreno}"
	end

	def valorE()

		@carbohidratos * 4 + @lipidos * 9 + @proteinas * 4
	end

	def cantidad()

		@proteinas + @carbohidratos + @lipidos
	end

	def <=>(other)
		self.valorE() <=> other.valorE()
	end
end
