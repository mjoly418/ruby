class Alumno
	attr_accessor :codigo, :nombre, :apellido, :notas
	def initialize(codigo, nombre, apellido, notas)
		@codigo = codigo
		@nombre = nombre
		@apellido = apellido
		@notas = notas
	end	

	notas = {
    "pc1" => 0,
    "pc2" => 0,
    "pc3" => 0,
    "parcial" => 0,
    "final" => 0,
   }

	def promedio
		pf = (((notas["pc1"]+notas["pc2"]+notas["pc3"])/3)*0.2) + (notas["parcial"]*0.3) + (notas["final"]*0.5)
	end

end

alumno = Alumno.new('u811489', 'Ursula','Cervantes', {
    "pc1" => 18,
    "pc2" => 16,
    "pc3" => 19,
    "parcial" => 17,
    "final" => 20,
   })

puts  alumno.promedio


# class Alumno
# 	attr_accessor :codigo, :nombre, :apellido, :notas
# 	def initialize(codigo, nombre, apellido, notas)
# 		@codigo = codigo
# 		@nombre = nombre
# 		@apellido = apellido 
# 		@notas = notas
# 	end	

# 	def promedio
# 		pf = (((notas["pc1"]+notas["pc2"]+notas["pc3"])/3)*0.2) + (notas["parcial"]*0.3) + (notas["final"]*0.5)
# 	end

# end

# alumno = Alumno.new('u811489', 'Ursula','Cervantes', {
#     "pc1" => 18,
#     "pc2" => 16,
#     "pc3" => 19,
#     "parcial" => 17,
#     "final" => 20,
#    })

# puts  alumno.promedio