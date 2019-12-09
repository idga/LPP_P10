# Autor:: 	Isaac Daniel Garcia Armas
# Web::		https://github.com/ULL-ESIT-LPP-1920/tdd-idga
#
# == Clase PlatoAmbiental
# Clase para representar un _Plato Ambiental_ a partir de un _Plato Energia_
# * metodo initialize
# * metodo gei
# * metodo terreno
# * metodo indice_carbono
# * metodo huella_nutricional
# * metodo <=>

class PlatoAmbiental < PlatoEnergia

	def initialize(a)
		super(a)
	end

	def gei
		@alimentos.inject(0){|c,a| c + a.gei()}
	end

	def terreno
		@alimentos.inject(0){|c,a| c + a.terreno()}
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
	
	def <=>(other)
		self.huella_nutricional <=> other.huella_nutricional
	end
end
