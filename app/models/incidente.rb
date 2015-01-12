class Incidente < ActiveRecord::Base
	validates_presence_of :asunto
	validates_presence_of :descripcion
	validates_presence_of :responsable
	validates_presence_of :tipo
	validates_presence_of :prioridad
end
