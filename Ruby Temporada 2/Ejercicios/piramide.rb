class Trabajador
	attr_accessor :codigo, :nombre, :apellido, :sueldo_base, :categoria, :ventas_promedio

	def initialize(codigo, nombre, apellido, sueldo_base, categoria, ventas_promedio)
		@codigo = codigo
		@nombre = nombre
		@apellido = apellido
		@sueldo_base = sueldo_base
		@categoria = categoria
		@ventas_promedio = ventas_promedio
	end

	def self.cantidad_miembros(trabajadores, tipo)
		#total_miembros_tipo = 0
		# trabajadores.each do |trabajador|
		# 	if trabajador.categoria == tipo
		# 		total_miembros_tipo += 1
		# 	end
		# end
		total_miembros_tipo = trabajadores.select {|trabajador| trabajador.categoria == tipo}.length
		total_miembros_tipo	
	end

	def bono(trabajadores)
		cantidad_miembros = Trabajador.cantidad_miembros(trabajadores, categoria)
		case categoria
			when "Platino"
				resultado = cantidad_miembros * 0.30 + ventas_promedio * cantidad_miembros
			when "Oro"
				resultado = cantidad_miembros * 0.08 + ventas_promedio * 10 + 500
			when "Plata"
				resultado = (100 + ventas_promedio * 5) + cantidad_miembros
		end
		resultado
	end

	def self.total_bonos(trabajadores)
		resultado = 0
		trabajadores.each do |trabajador|
			resultado += trabajador.bono(trabajadores)
		end
		resultado
	end

	def self.promedio(trabajadores)
		resultado = Trabajador.total_bonos(trabajadores) / trabajadores.length
		resultado
	end
end

lumi = Trabajador.new(123, "Lumir", "Olivares", 12000, "Platino", 5)
mari = Trabajador.new(456, "Mari", "De Olivares", 12000, "Plata", 6)
cris = Trabajador.new(890, "Cristian", "Joly", 12000, "Oro", 7)
camu = Trabajador.new(123, "Cami", "Joly", 12000, "Platino", 9)

trabajadores = [lumi, mari, cris, camu]


trabajadores.each do |trabajador|
	puts "el trabajador #{trabajador.nombre} gano un bono por #{trabajador.bono(trabajadores)}"
end

puts "El total de bonos a pagar es #{Trabajador.total_bonos(trabajadores)}"

puts "El promedio general de los bonos es #{Trabajador.promedio(trabajadores)}"