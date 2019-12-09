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
	
	def indice_carbono
	
		v = self.gei
		
		if v < 800
			return 1
		elsif v >= 800 && v <= 1200
			return 2
		else
			return 3
		end
	end
	
	def huella_nutricional
	
		(self.indice_energia + self.indice_carbono)/2
	end
end
