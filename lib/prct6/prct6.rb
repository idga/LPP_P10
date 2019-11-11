require "prct6/version"

class Alimento

	attr_accessor :nombre, :proteinas, :carbohidratos, :lipidos, :gei, :terreno

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

	def impactoH

		"#{(valorE/30.0).round}% IDR Kcal - Proteinas #{proteinas}g/54g"
	end

	def impactoM

		"#{(valorE/23.0).round}% IDR Kcal - Proteinas #{proteinas}g/41g"
	end
end
