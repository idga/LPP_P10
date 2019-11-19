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
	
	# Extraccion por la cabeza
	def shift
		if self.empty
			return nil
		else
			# Si solo hay un elemento
			if @tail == @head
				@tail = nil
				@head = nil
			# Si tiene mas de un elemento
			else
				@head = @head.next
				return @head
			end
		end
	end

	# Extraccion por la cola
	def pop
		if self.empty
			return nill
		else
			if @tail == @head
				@tail = nil
				@head = nil
			else
				sw = @tail
				@tail = sw.prev
				@tail.next = nil
				return sw
			end
		end
	end
end
