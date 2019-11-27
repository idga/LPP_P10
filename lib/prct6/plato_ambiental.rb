class PlatoAmbiental < PlatoEnergia

	def initialize(a)
		super(a)
	end

	def gei
		cont = 0
		@alimentos.each do |i|
			cont += i.gei
		end
		return cont
	end

	def terreno
		cont = 0
		@alimentos.each do |i|
			cont += i.terreno
		end
		return cont
	end
end