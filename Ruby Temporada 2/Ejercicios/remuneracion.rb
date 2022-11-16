class Empleado
	attr_accessor :dni, :nombre, :cargo, :sueldo_bruto, :horas_extras, :onp_afp
	def initialize(dni, nombre, cargo, sueldo_bruto, horas_extras, onp_afp)
		@dni = dni
		@nombre = nombre
		@cargo = cargo
		@sueldo_bruto = sueldo_bruto
		@horas_extras = horas_extras
		@onp_afp = onp_afp
	end

	def calcular_remuneracion

		def descuento_onp_afp

			onp = 0.13
			afp = 0.12

			if onp_afp == "ONP"
				sueldo_bruto * onp

			elsif onp_afp == "AFP"
				sueldo_bruto * afp
			end
		end

		def descuento_imp_renta

			imp_renta = 0.15

			sueldo_bruto * imp_renta
		end

		def calculo_horas_extras

			valor_hora_extra = 50

			horas_extras * valor_hora_extra
		end

		remuneracion_final = sueldo_bruto - descuento_onp_afp - descuento_imp_renta + calculo_horas_extras

		puts "La remuneración final de #{nombre} es #{remuneracion_final.to_i}"
	end
end


empleado = Empleado.new('75023481', 'Anais Rodriguez', 'Diseñador', 8500, 2, 'AFP')
puts empleado.calcular_remuneracion