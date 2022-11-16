# Ciclo each

calificaciones = %w[10 7 8 5 7 9 8 6 7]

suma = 0

calificaciones.each_with_index do |calificacion,posicion|
	puts "En la posicion #{posicion} tenemos: #{calificacion}"
	suma += calificacion.to_i
end

puts "El proimedio de tus calificaciones es #{suma.to_f / calificaciones.length}"
