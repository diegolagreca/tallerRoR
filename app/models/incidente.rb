class Incidente < ActiveRecord::Base

	# Valido que todos los campos estén llenos antes de hacer efectiva la carga del incidente en el sistema
	validates_presence_of :asunto
	validates_presence_of :descripcion
	validates_presence_of :responsable
	validates_presence_of :tipo
	validates_presence_of :prioridad
end
