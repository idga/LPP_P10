require "prct6/version"

module Prct6
  class Error < StandardError; end
end

class Alimento

	attr_accessor :nombre

	def initialize(n)
		@nombre = n
	end
end
