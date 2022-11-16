# def hola_gente(personas)
# 	personas.each {|persona| puts "Hola #{persona}"}
# end

# hola_gente(["Uriel", "Coco", "Mari"])


# def hola_gente(*personas)
# 	# Personas es un arreglo que contiene todos los argumentos que se le pasaron a un método
# 	personas.each {|persona| puts "Hola #{persona}"}
# end

# hola_gente(["Uriel", "Coco", "Mari"])


# def hola_gente(*personas)
# 	# Personas es un arreglo que contiene todos los argumentos que se le pasaron a un método
# 	personas.each {|persona| puts "Hola #{persona}"}
# end

# hola_gente 23, "Uriel", "Coco", "Mari"


# def hola_gente(mensaje, *personas)
# 	# Personas es un arreglo que contiene todos los argumentos que se le pasaron a un método
# 	personas.each {|persona| puts "#{mensaje} #{persona}"}
# end

# hola_gente "Hey hola", 23, "Uriel", "Coco", "Mari"





def hola_gente(mensaje, *personas)
	# Personas es un arreglo que contiene todos los argumentos que se le pasaron a un método
	personas.each {|persona| puts "#{mensaje} #{persona}"}
end

nombres = ["Uriel", "Coco", "Mari"]

hola_gente "Hey hola", *nombres
