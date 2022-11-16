# class Tutor
# 	def initialize(name)
# 		@nombre = name

# 		puts @nombre
# 	end
# end

# uriel = Tutor.new("Uriel")
# jose = Tutor.new("José")

# puts uriel.nombre

# puts jose.nombre


# class Tutor
# 	def initialize(name)
# 		@nombre = name

# 	end

# 	def say_my_name
# 		puts @nombre
# 	end
# end

# uriel = Tutor.new("Uriel")
# jose = Tutor.new("José")


# uriel.say_my_name
# jose.say_my_name



# class Tutor
# 	def initialize(name)
# 		@nombre = name

# 	end

# 	def get_nombre
# 		@nombre
# 	end

# 	def set_nombre(nombre)
# 		@nombre = nombre
# 	end
# end

# uriel = Tutor.new("Uriel")
# jose = Tutor.new("José")


# puts uriel.get_nombre

# uriel.set_nombre("Marcos")

# puts uriel.get_nombre



# class Tutor
# 	def initialize(name)
# 		@nombre = name
# 	end

# 	def nombre
# 		@nombre
# 	end

# 	def nombre=(nombre)
# 		@nombre = nombre
# 	end
# end

# uriel = Tutor.new("Uriel")
# jose = Tutor.new("José")


# puts uriel.nombre

# uriel.nombre = "Marcos"

# puts uriel.nombre





class Tutor
	attr_accessor :nombre
	def initialize(name)
		@nombre = name
	end

end

uriel = Tutor.new("Uriel")
jose = Tutor.new("José")


puts uriel.nombre

uriel.nombre = "Marcos"

puts uriel.nombre








