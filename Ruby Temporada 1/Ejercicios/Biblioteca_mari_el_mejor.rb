libros_iniciales = ['El Principito,5', 'Cien años de soledad,3', 'El código Da Vinci,8', 'Matemáticas Avanzadas,4', 'Fisica de Newton,6']
user = "vander"
password = "homero70"

puts "Oh! Que profesor tan guapo! Por favor ingresa tu usuario ;)"
user_input = gets.chomp
puts "Ahora ingresa tu clave, cielo :3"
password_input = gets.chomp

while user != user_input || password != password_input
	puts "Usuario o contraseña incorrectos, por favor ingréselos nuevamente"
	print "Usuario: "
	user_input = gets.chomp
	print "Contraseña: "
	password_input = gets.chomp
end

libros = []
libros_titulos = []
libros_titulos_iniciales = []
libros_cantidades = []
libros_cantidades_iniciales = []

libros_iniciales.each do |libro_inicial|
	libros << libro_inicial.split(",")
 end 

libros.each do |titulo_cantidad|
	libros_titulos << titulo_cantidad[0].downcase
	libros_titulos_iniciales << titulo_cantidad[0]
	libros_cantidades << titulo_cantidad[1].to_i
	libros_cantidades_iniciales << titulo_cantidad[1]
end

puts "\nSaludos. Estos son los libros y cantidades disponibles"
libros_titulos_iniciales.each do |libro_titulo|
	puts "#{libro_titulo} (#{libros_cantidades[libros_titulos_iniciales.find_index(libro_titulo)]})"
		end

bienvenida = "\n¿Quieres prestar o devolver un libro? \nPara salir del sistema escribe 'Salir'"

puts bienvenida

accion = gets.chomp.downcase

nombre_libro = []

until accion == "salir"
	if accion == "prestar"
		puts "Por favor escribe el libro que quieres prestar"
		nombre_libro = gets.chomp.downcase
		indice = libros_titulos.find_index(nombre_libro).to_i

		if libros_titulos.include?(nombre_libro) && libros_cantidades[indice] > 0
			libros_cantidades[indice] -= 1

			puts "\nPréstamo aceptado"
		else
			puts "\nError: Libro no encontrado o cantidades insuficientes"
		end

		puts "\nEstos son los libros y cantidades disponibles \n"

		libros_titulos_iniciales.each do |libro_titulo|
			puts "#{libro_titulo} (#{libros_cantidades[libros_titulos_iniciales.find_index(libro_titulo)]})"
		end

		puts bienvenida

		accion = gets.chomp.downcase

	elsif accion == "devolver"
		puts "Por favor escribe el libro que quieres devolver"
		nombre_libro = gets.chomp.downcase
		indice = libros_titulos.find_index(nombre_libro).to_i

		if libros_titulos.include?(nombre_libro) && libros_cantidades[indice].to_i < libros_cantidades_iniciales[indice].to_i
			libros_cantidades[indice] += 1

			puts "\nDevolución aceptada"
		
		else
			puts "\nError: Libro no encontrado o cantidades completas"
		end

		puts "\nEstos son los libros y cantidades disponibles \n"

		libros_titulos_iniciales.each do |libro_titulo|
			puts "#{libro_titulo} (#{libros_cantidades[libros_titulos_iniciales.find_index(libro_titulo)]})"
		end

		puts bienvenida

		accion = gets.chomp.downcase


	else
		puts "No entiendo qué quieres hacer. Por favor intenta de nuevo"
		
	puts bienvenida
		accion = gets.chomp.downcase
	end
end

print "\nMuchas gracias. Vuelvas prontos"
 
