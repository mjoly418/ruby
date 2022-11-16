class Participante
	attr_accessor :codigo, :nombre, :edad, :dni, :color_cinturon, :partidas_ganadas, :partidas_empatadas, :partidas_perdidas
	def initialize (codigo, nombre, edad, dni, color_cinturon, partidas_ganadas, partidas_empatadas, partidas_perdidas)
		@codigo = codigo
		@nombre = nombre
		@edad = edad
		@dni = dni
		@color_cinturon = color_cinturon
		@partidas_ganadas = partidas_ganadas
		@partidas_empatadas = partidas_empatadas
		@partidas_perdidas = partidas_perdidas
	end

	def puntaje
		partidas_ganadas * 4 + partidas_empatadas * 3
	end

	def self.busqueda(participantes, dni_ingresado)
		if participantes.dni.include?(dni_ingresado)
	end


end

class Equipo
	attr_accessor :codigo, :nombre, :participantes
	def initialize (codigo, nombre, participantes)
		@codigo = codigo
		@nombre = nombre
		@participantes = participantes
	end
end

camila = Participante.new("2312", "Camila", 24, 1234, "Blanco", 1, 0, 9)
cristian = Participante.new("0505", "Cristian", 26, 2345, "Negro", 10, 0, 0)
lumir = Participante.new("1011", "Lumir", 32, 3456, "Verde", 5, 2, 3)
mari = Participante.new("0418", "Mari", 29, 4567, "Amarillo", 3, 2, 5)
claudia = Participante.new("1011", "Claudia", 50, 5678, "Verde", 9, 0, 1)
tinkiwinki = Participante.new("3103", "tinkiwinki", 25, 6789, "Morado", 5, 2, 3)
dixi = Participante.new("3103", "Dixi", 25, 6789, "Verde", 5, 2, 3)
lala = Participante.new("3103", "Lala", 25, 6789, "Amarillo", 5, 2, 3)
po = Participante.new("3103", "Po", 25, 6789, "Rojo", 5, 2, 3)
uriel = Participante.new("2312", "Uriel", 25, 6789, "Blanco", 0, 0, 10)
red_ranger = Participante.new("1812", "Cold", 50, 6789, "Rojo", 6, 1, 3)
blue_ranger = Participante.new("1812", "Max", 50, 6789, "Azul", 5, 3, 2)

participantes = [camila, cristian, lumir, mari, claudia, tinkiwinki, dixi, lala, po, uriel, red_ranger, blue_ranger]

equipo1 = [cristian]
equipo2 = [camila, lumir]
equipo3 = [uriel]
equipo4 = [tinkiwinki, dixi, lala, po]
equipo5 = [mari, claudia]
equipo6 = [red_ranger, blue_ranger]

mirmidones = Equipo.new("MEWWS", "Los mirmidones", equipo1)
los_monopartidos = Equipo.new("1", "Los monopartidos", equipo2)
los_tutores = Equipo.new("COCO", "Los tutores", equipo3)
los_teletubbies = Equipo.new("SOL", "Los teletubbies", equipo4)
cuatrojos = Equipo.new("o-o", "Los cuatrojos", equipo5)
pawer_rangers = Equipo.new("rangers", "Los pawer rangers", equipo6)

equipos = [mirmidones, los_monopartidos, los_tutores, los_teletubbies, cuatrojos, pawer_rangers]

puts camila.puntaje



