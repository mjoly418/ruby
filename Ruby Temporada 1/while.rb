# i = 0

# while i <= 10
# 	# Instrucciones
# 	puts i
# 	i += 1
# end

# playlist = ["First song", "Second song", "Third song"]
# playing = true

# index_song = 0

# # Si hay canciones en la lista de reproducción y
# # se está reproduciendo (playing es verdadero)
# # entonces debe ejecutar las canciones

# while (index_song < playlist.length) && playing
# 	puts "Reproduciendo #{playlist[index_song]}"

# 	index_song += 1

# # Si nos manda 0, hacemos stop, si no seguimos reproduciendo
# 	print "Coloca 0 para detener la reproducción: "
# 	respuesta = gets().chomp.to_i

# 	# if respuesta == 0
# 	# 	playing = false
# 	# end

# 	# playing = false if respuesta == 0
# 	# end

# 	playing = respuesta != 0
# end


numero_magico = 18

print "Adivina el número mágico: "
numero_usuario = gets().chomp.to_i

until numero_usuario == numero_magico
	print "Incorrecto. Adivina otra vz: "
	numero_usuario = gets().chomp.to_i
end

puts "Felicidades! Adivinaste!"