class Video
	attr_accessor :minutes, :title

	def initialize(title)
		self.title = title
		puts "Soy initialize"
	end

	def play
	end

	def pause
	end

	def stop
	end

end


# video_30_curso_ruby = Video.new

# video_30_curso_ruby.title = "Objetos y clases"

# video_31_curso_ruby = Video.new

# video_31_curso_ruby.title = "Atributos"


# puts  video_30_curso_ruby.title

# puts  video_31_curso_ruby.title


video_30_curso_ruby = Video.new("Objetos y clases")

puts  video_30_curso_ruby.title

Video.new("Objetos y clases")
