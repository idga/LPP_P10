require "prct6/version"

module Prct6
  class Error < StandardError; end
end

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
end
