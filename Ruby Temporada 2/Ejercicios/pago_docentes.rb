datos_docentes = [{dni: "123", nombre: "Uriel", apellido: "Hernandez", grado: "Titulado", antiguedad: 5, horas_trabajadas: 20, minutos_tardanza: 15}, {dni: "456", nombre: "Pedro", apellido: "Perez", grado: "Maestria", antiguedad: 10, horas_trabajadas: 50, minutos_tardanza: 20}, {dni: "789", nombre: "Andres", apellido: "Gonzalez", grado: "Doctorado", antiguedad: 20, horas_trabajadas: 60, minutos_tardanza: 5}]

class Docente
	attr_accessor :dni, :nombre, :apellido, :grado, :antiguedad, :horas_trabajadas, :minutos_tardanza
	def initialize (dni, nombre, apellido, grado, antiguedad, horas_trabajadas, minutos_tardanza)
		@dni = dni
		@nombre = nombre
		@apellido  = apellido
		@grado = grado
		@antiguedad = antiguedad
		@horas_trabajadas = horas_trabajadas
		@minutos_tardanza = minutos_tardanza
	end

	

	def salario_base
		case grado
			when "Bachiller"
				horas_trabajadas * 40
			when "Titulado"
				horas_trabajadas * 80
			when "Maestria"
				horas_trabajadas * 100
			when "Doctorado"
				horas_trabajadas * 180
		end
	end

	def bono_antiguedad
		case antiguedad
			when 15..100
				salario_base * 0.10
			when 11..15
				salario_base * 0.07
			when 7..10
				salario_base * 0.05
			when 4..6
				salario_base * 0.4
			when 0..4
				salario_base * 0.3
		end
	end

	def bono_puntualidad
		case minutos_tardanza
			when 0
				120
			when 1..5
				80
			when 6..10
				40
			when 11..15
				0
			when 16..9999
				-40
		end
	end

	def docente_sueldo
		salario_base + bono_antiguedad + bono_puntualidad
	end

	def datos_maestros
		puts "
		Nombre:#{nombre} 
		Apellido:#{apellido} 
		DNI:#{dni} 
		Grado:#{grado} 
		Antigüedad:#{apellido} 
		Horas trabajadas:#{horas_trabajadas} 
		Minutos de tardanza:#{minutos_tardanza}
		Sueldo: #{docente_sueldo}"
	end

	def datos_maestros_filtrados(x)
		
		ç
	end

	# def monto_por_grado
	# 	monto_titulado = 0
	# 	if grado == "Titulado"
	# 		monto =+ docente_sueldo
	# 	end
	# 	puts "Para el grado #{grado} el monto a pagar es #{monto}"
	# end

	

	def self.monto_por_grado(docentes)

		monto_bachiller = 0
		monto_titulado = 0
		monto_maestria = 0
		monto_doctorado = 0

		docentes.each do |docente|
			case docente.grado
				when "Bachiller"
					monto_bachiller += docente.docente_sueldo
				when "Titulado"
					monto_titulado += docente.docente_sueldo
				when "Maestria"
					monto_maestria += docente.docente_sueldo
				when "Doctorado"
					monto_doctorado += docente.docente_sueldo
			end
		end

		puts "Para el grado bachiller el monto a pagar es #{monto_bachiller}"
		puts "Para el grado titulado el monto a pagar es #{monto_titulado}"
		puts "Para el grado maestria el monto a pagar es #{monto_maestria}"
		puts "Para el grado doctorado el monto a pagar es #{monto_doctorado}"
	end

end

docentes = []

datos_docentes.each do |datos|
	docente = Docente.new(datos[:dni], datos[:nombre], datos[:apellido], datos[:grado], datos[:antiguedad], datos[:horas_trabajadas], datos[:minutos_tardanza])
	docentes << docente
end


docentes.each do |docente|
	puts docente.datos_maestros
end

docentes.each do |docente|
	grado = "Titulado"
	puts docente.datos_maestros_filtrados(grado)
end

Docente.monto_por_grado(docentes)













