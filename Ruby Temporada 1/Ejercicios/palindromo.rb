puts "Por favor escribe tu frase :)"

frase = gets.chomp

if frase.delete(' ') == frase.delete(' ').reverse
	puts "#{frase} es un palíndromo"
else 
	puts "#{frase} no es un palíndromo"
end

 