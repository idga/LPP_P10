class PlatoDSL

	attr_accessor :nombre, :alimentos, :gramos, :precios
	
	def initialize(nombre, &block)
	
		@nombre = nombre
		@ingredientes = []
		
		if block_given?  
			if block.arity == 1
				yield self
			else
				instance_eval(&block) 
			end
		end
	end
	
	def to_s
		output = @nombre
		output << "\n#{'-' * @nombre.size}\n"
		output << "#{@ingredientes.join(', ')}\n"
		output
	end     
	
	
	def ingrediente(nombre, opcion = {})
		ingrediente = nombre
		ingrediente << " (#{opcion[:gramos]})" if opcion[:gramos]
		@ingredientes << ingrediente
	end
end