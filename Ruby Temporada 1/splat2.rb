# def hola_gente(personas)
# 	personas.each {|persona| puts "Hola #{persona}"}
# end

# hola_gente(["Mari","Lumi"])

# def hola_gente(*personas)
# 	#Personas es un arreglo que contiene todos los argumentos que se le pasaron a un método
# 	personas.each {|persona| puts "Hola #{persona}"}
# end

# hola_gente "Mari","Lumi",23,"5rf


# def hola_gente(mensaje,*personas)
# 	personas.each {|persona| puts "#{mensaje} #{persona}"}
# end

# hola_gente "Hello","Mari","Lumi",23,"5rf"


def hola_gente(mensaje,*personas)
	personas.each {|persona| puts "#{mensaje} #{persona}"}
end
nombres = ["Mari","Lumi",23,"5rf"]

hola_gente "Hello", *nombres

#El asterisco "*" convierte un arreglo en una lista de parámetros