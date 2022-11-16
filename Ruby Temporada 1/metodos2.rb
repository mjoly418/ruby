# def square(x)
# 	#Retorna el cuadrado de un número

# 	x*x
# end

# def saludar
# 	puts "Hola mundo"
# end

# saludar()

# puts square (4)

def square(x)
	return 0 unless x.is_a? Integer
	# return si quieres que tu programa termine y regrese un valor antes de la linea final
	x*x
end

puts square (45)