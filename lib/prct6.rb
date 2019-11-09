require "prct6/version"

module Prct6
  class Error < StandardError; end
end

class Alimento

	attr_accessor :nombre, :proteinas, :carbohidratos, :lipidos

	def initialize(n,p,c,l)
		@nombre = n
		@proteinas = p
		@carbohidratos = c
		@lipidos = l
	end
end
