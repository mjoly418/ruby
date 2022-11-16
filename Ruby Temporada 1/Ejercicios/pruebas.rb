# nombres = ["Claudia", "Camila", "Cris", "Mari"]

# print nombres.find_index("Cris")

libros = ['El Principito , 5', 'Cien años de soledad , 3', 'El código Da Vinci , 8', 'Matematicas Avanzadas,4', 'Fisica de Newton,6']

nombre_libro = 'Oso'
	if libros[0].start_with?(nombre_libro)
		print "True"
	else
		print "False"
	end

puts "Por favor escribe el libro que quieres prestar"
nombre_libro = gets.chomp.downcase
if libros.include?(nombre_libro)
	print "True"
	else
		print "False"
	end
