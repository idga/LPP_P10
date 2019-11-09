require "prct6/version"

module Prct6
  class Error < StandardError; end
end

class Alimento

	attr_accessor :nombre, :proteinas

	def initialize(n,p)
		@nombre = n
		@proteinas = p
	end
end
