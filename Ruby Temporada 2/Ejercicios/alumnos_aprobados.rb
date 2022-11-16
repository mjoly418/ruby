class Alumno
	attr_accessor :code, :nombre, :t1, :t2
	def initialize(code, nombre, t1, t2)
		@code = code
		@nombre = nombre
		@t1 = t1
		@t2 = t2
	end

	def getStatus
		
		status = ""

		if t1 >= 85 && t2 >= 85
			status = "aprobado"

		elsif t1 >= 85 || t2 >= 85
			status = "observado"

		else
			status = "reprobado"
		end

		puts "Alumno #{nombre} con código #{code} está #{status}."

	end

end

alumno1 = Alumno.new('u823097', 'Luis Prado', 25, 65)
puts alumno1.getStatus



# class Alumno
# 	attr_accessor :code, :nombre, :t1, :t2
# 	def initialize
# 		@code
# 		@nombre
# 		@t1
# 		@t2
# 	end

# 	def getStatus
		
# 		status = ""

# 		if t1 >= 85 && t2 >= 85
# 			status = "aprobado"

# 		elsif t1 >= 85 || t2 >= 85
# 			status = "observado"

# 		else
# 			status = "reprobado"
# 		end

# 		puts "Alumno #{nombre} con código #{code} está #{status}."

# 	end

# end


# alumno1 = Alumno.new

# alumno1.code = '7sdhsd8'
# alumno1.nombre = "Ursula"
# alumno1.t1 = 85
# alumno1.t2 = 85


# puts alumno1.getStatus




