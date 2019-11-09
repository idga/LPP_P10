require "prct6/version"

module Prct6
  class Error < StandardError; end
end

class Alimento

	attr_accessor :nombre, :proteinas, :carbohidratos, :lipidos, :gei

	def initialize(n,p,c,l,g)
		@nombre = n
		@proteinas = p
		@carbohidratos = c
		@lipidos = l
		@gei = g
	end
end
