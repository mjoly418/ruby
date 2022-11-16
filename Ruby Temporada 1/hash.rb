# tutor = { "nombre" => "Uriel", "Edad" => 23, 20 => "Veinte", [] => "arreglo" }

# puts tutor

# puts tutor["nombre"]

# puts tutor[[]]

# tutor ["cursos"] = 10

# puts tutor ["cursos"]

# tutor.default = ":)"
# puts tutor [5]

# tutor = {:nombre => "Uriel", :edad => "23", :cursos => 10}

tutor = {nombre: "Uriel", edad: "23", cursos: 10}

# puts tutor[:nombre]

tutor.each do |clave,valor|
	puts "En #{clave} está guardado #{valor}"
end

