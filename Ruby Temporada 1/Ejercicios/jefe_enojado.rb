insulto = [
	"¿QUÉ QUIERES PEDAZO DE ANIMAL?",
	"¿QUÉ QUIERES PEDAZO DE MIERDA?",
	"LO QUE ME FALTABA, QUE VENGA A JODER ESTE HPTA. QUÉ QUIERES?",
	"QUÉ QUIERES PENDEJO",
	"QUÉ QUIERES ÍMBECIL"]

puts insulto.sample

consulta = gets.chomp

consulta = consulta.downcase if consulta != consulta.upcase

if consulta == consulta.upcase
	puts "A MI NO ME VENGAS A GRITAR TRIPLE HIJUEPUTA!! ¡¡ESTAS DESPEDIDO!!"
elsif consulta.start_with? "quiero"
	puts "PERO QUE DICES HOMBRE ¿¡¿QUIERES #{consulta.delete_prefix("quiero ").upcase}?!? ¡¡ESTAS DESPEDIDO!!"
else 
	puts "HABLA BIEN BOBO HPTA!!! ¡¡DESPEDIDO POR MARICA!!"
end

# if consulta == consulta.upcase
# 	puts "A MI NO ME VENGAS A GRITAR TRIPLE HIJUEPUTA!! ¡¡ESTAS DESPEDIDO!!"
# elsif consulta.start_with? "Quiero"
# 	puts "PERO QUE DICES HOMBRE ¿¡¿QUIERES #{consulta.delete_prefix("Quiero ").upcase}.?!? ¡¡ESTAS DESPEDIDO!!"
# elsif consulta.start_with? "quiero"
# 	puts "PERO QUE DICES HOMBRE ¿¡¿QUIERES #{consulta.delete_prefix("quiero ").upcase}.?!? ¡¡ESTAS DESPEDIDO!!"
# else 
# 	puts "HABLA BIEN BOBO HPTA!!! ¡¡DESPEDIDO POR MARICA!!"
# end


