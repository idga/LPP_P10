require "prct6/version"

module Prct6
  class Error < StandardError; end
end

class Alimento

	attr_accessor :nombre, :proteinas, :carbohidratos

	def initialize(n,p,c)
		@nombre = n
		@proteinas = p
		@carbohidratos = c
	end
end
