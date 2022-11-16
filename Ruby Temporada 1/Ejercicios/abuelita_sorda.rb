# puts "Hola hijito, cuéntame..."

# respuesta = gets.chomp

# until respuesta == "ADIOS"
# 	if respuesta == respuesta.upcase
# 		puts "NO, ¡NO DESDE #{(1930..1950).to_a.sample}!"
# 		respuesta = gets.chomp
# 	elsif respuesta != respuesta.upcase
# 		puts "¿¡HUH?! ¡HABLA MAS FUERTE, HIJO!"
# 		respuesta = gets.chomp
# 	end	
# end	

# print "CHAO MIJITO!"


# puts "HOLA HIJITO, CUÉNTAME..."

# respuesta = gets.chomp
# adios = 0

# while adios < 3
# 	if respuesta == "ADIOS"
# 		adios += 1
# 		puts "¿¡HUH?! ¡HABLA MAS FUERTE, HIJO!" if adios != 3
# 		respuesta = gets.chomp if adios != 3
# 	elsif respuesta == respuesta.upcase
# 		adios = 0
# 		puts "NO, ¡NO DESDE #{(1930..1950).to_a.sample}!"
# 		respuesta = gets.chomp
# 	elsif respuesta != respuesta.upcase
# 		adios = 0
# 		puts "¿¡HUH?! ¡HABLA MAS FUERTE, HIJO!"
# 		respuesta = gets.chomp
# 	end	
# end	

# print "CHAO MIJITO :(" 



puts "HOLA HIJITO, CUÉNTAME..."

respuesta = gets.chomp
adios = 0

while adios < 3
	if respuesta == "ADIOS"
		adios += 1
		if adios != 3
			puts "¿¡HUH?! ¡HABLA MAS FUERTE, HIJO!"
			respuesta = gets.chomp
		end
	elsif respuesta == respuesta.upcase
		adios = 0
		puts "NO, ¡NO DESDE #{(1930..1950).to_a.sample}!"
		respuesta = gets.chomp
	elsif respuesta != respuesta.upcase
		adios = 0
		puts "¿¡HUH?! ¡HABLA MAS FUERTE, HIJO!"
		respuesta = gets.chomp
	end	
end	

print "CHAO MIJITO :(" 


