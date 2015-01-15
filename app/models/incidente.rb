class Incidente < ActiveRecord::Base

	# Presencia de atributos
	
	validates_presence_of :asunto, message: "no puede estar vacío."
	validates_presence_of :descripcion, message: "no puede estar vacío."
	validates_presence_of :responsable, message: "no puede estar vacío."
    validates_presence_of :tipo, message: "no puede estar vacío."
	validates_presence_of :prioridad, message: "no puede estar vacío."

	# Largo de los atributos

	validates :asunto, length: { maximum: 60, message: "solo permite hasta 60 caracteres." }
	validates :descripcion, length: { maximum: 500, message: "permite un máximo de 500 caracteres." }
	validates :responsable, length: { maximum: 40, message: "solo permite hasta 40 caracteres." }
	validates :prioridad, length: { is: 1, message: "debe ser 1, 2 o 3." }

	# Otros

	# validates :responsable, format: { with: /\A[a-zA-Z]+\z/,
 	# message: "solo se permite el ingreso de letras." }
	
	validates :tipo, inclusion: { in: %w(Problema Soporte Bug Error problema soporte bug error),
    message: "%{value} no es un tipo de incidente válido" }


	# Valido que Prioridad sea un número
		
	validates :prioridad, numericality: true


    # Valido que Prioridad sea un número del 1 al 3

    validates :prioridad, inclusion: { in: 1..3 }

end

