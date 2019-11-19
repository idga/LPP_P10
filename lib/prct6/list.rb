Node = Struct.new(:dato, :next, :prev)

class List
	
	attr_accessor :head, :tail

	def initialize()
		@head = nil
		@tail = nil
	end

	def insert(a)
		n = Node.new(a,nil,nil)

		# Si la lista esta vacia
		if self.empty
			n.next = n
			n.prev = n
			@head = n
			@tail = n
		# Si NO esta vacia
		else
			n.prev = @tail
			n.next = nil
			@tail.next = n
			@tail = n
		end
	end

	def empty
		@head.nil?
	end
end
