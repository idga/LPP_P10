Node = Struct.new(:dato, :next, :prev)

class List
	
	attr_accessor :head, :tail

	def initialize()
		@head = nil
		@tail = nil
	end

	def insert(a)
		n = Node.new(a,nil,nil)
	end
end
