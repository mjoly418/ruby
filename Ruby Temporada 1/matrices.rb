# Cantidad dimensiones: 2 dimensiones
# Arreglos internos, deben tener la misma cantidad de elementos
# Matrix => Todos los elementos deben ser números
require 'matrix'

# [
# 	1 8 3
# 	5 2 2
# ]

# matriz = Matrix[[1,8,3],[5,2,2]]

# matriz.each do |i|
# 	puts i
# end


# [
# 	1 8 3
# 	5 2 2
#	5 2 2
# ]

matriz = Matrix[[1,8,3],[5,2,2],[5,2,2]]

matriz.each(:diagonal) do |i|
	puts i
end

matriz.each(:strict_lower) do |i|
	puts i
end

matriz.each(:strict_upper) do |i|
	puts i
end

puts matriz.diagonal?