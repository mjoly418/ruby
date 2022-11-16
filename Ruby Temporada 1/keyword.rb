# def hola(nombre,edad)
	
# 	if edad > 30
# 		puts "Hola señor #{nombre}"
# 	elsif edad < 30
# 		puts "Hola joven #{nombre}"
# 	end

# end

# hola("Uriel",20)

# def hola(nombre:"",edad:0)
	
# 	if edad > 30
# 		puts "Hola señor #{nombre}"
# 	elsif edad < 30
# 		puts "Hola joven #{nombre}"
# 	end
	
# end

# hola(nombre:"Uriel", edad: 54)

# VENTAJAS
# Permiten tener parámetros opcionales (Pueden ser enviados o no)
# Valores por default
# El orden de los parámetros ses arbitrario

def hola(nombre:"",edad:0,**options)
	
	if edad > 30
		puts "Hola señor #{nombre}"
	elsif edad < 30
		puts "Hola joven #{nombre}"
	end

	puts options

	puts options[:animal_favorito]
	
end

hola(edad:54,nombre:"Uriel",color_favorito:"Azul",animal_favorito:"Cocodrilo")

