class Cuadrado
	attr_accessor :lado
	def initialize(lado)
		@lado = lado
	end

	def area
		lado*lado
	end

	def perimetro
		lado*4
	end
end

cuadrado = Cuadrado.new(10)
puts cuadrado.area
puts cuadrado.perimetro