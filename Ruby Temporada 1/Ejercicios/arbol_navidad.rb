p "De qué altura quieres tu árbol?"

altura = gets.chomp.to_i
ramas = 1

while altura != 0
	puts (' ' * altura) + ('*' * ramas)
	altura -= 1
	ramas += 2
end

puts (' ' * (ramas / 2)) + '+'