Node = Struct.new(:dato, :next, :prev)

class List
	
	attr_accessor :dato, :head, :tail

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

	def size
		sz = 0
		n = @head
		while !(n.nil?)
			n = n.next
			sz += 1
		end
		return sz
	end

	def to_s
		n = @head
		while !(n.nil?)
			n = n.next
		end
	end

	def gei
		cont = 0
		n = @head
		while !(n.nil?)
			cont += n.dato.gei
			n = n.next
		end
		return cont
	end

	def terreno
		cont = 0
		n = @head
		while !(n.nil?)
			cont += n.dato.terreno
			n = n.next
		end
		return cont
	end
end
