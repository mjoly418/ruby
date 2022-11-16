numero = gets.chomp

numero = numero.to_i

residuo = numero % 2

if residuo == 0
	puts "#{numero} es par"
end

