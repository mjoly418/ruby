class Habitacion
	attr_accessor :largo, :ancho, :alto
	def initialize(largo, ancho, alto)
		@largo = largo
		@ancho = ancho
		@alto = alto
	end


	def calcular_cantidad_de_pintura

		ventanas = 1*1*2
		puerta = 2*1

		area_paredes = (largo*alto*2) + (ancho*alto*2)
		area_paredes_neta = area_paredes - (ventanas + puerta)
		cantidad_pintura = area_paredes_neta/58
	
		puts "Para esta habitación necesitas #{cantidad_pintura} galones de pintura."

	end

end

habitacion = Habitacion.new(10,20,16)
puts habitacion.calcular_cantidad_de_pintura

puts habitacion.alto