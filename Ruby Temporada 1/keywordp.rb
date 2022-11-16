def hola(nombre:"", edad:0, **options)
	if edad > 30
		puts "Hola señor #{nombre}"
	elsif edad < 30
		puts "Hola joven #{nombre}"
	end

	puts options

	# puts options[:animal_favorito]
end

# hola(nombre:"Uriel", edad: 32)


# VENTAJAS
# Permiten tener parámetros opcionales (Pueden ser enviados o no)
# Valores por default
# El orden de los parámetros ses arbitrario


hola(nombre:"Uriel", edad: 23, color_favorito:"Azul", animal_favorito:"Cocodrilo")