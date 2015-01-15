require 'test_helper'

class IncidenteTest < ActiveSupport::TestCase


	# Inicio del caso de testing
	def setup
		@i = incidentes(:one)
	end

	# Validación de integridad del incidente 
	test "integridad incidente" do
		assert_not !@i.valid?, "Ocurrieron errores al ingresar el incidente."
	end

	# Validación de existencia de atributos
	test "asunto existe" do
		assert_not_nil(@i.asunto, "El atributo Asunto no puede estar vacío")
	end
	test "descripcion existe" do
		assert_not_nil(@i.descripcion, "El atributo Descripción no puede estar vacío")
	end
	test "responsable existe" do
		assert_not_nil(@i.responsable, "El atributo Responsable no puede estar vacío")
	end
	test "tipo existe" do
		assert_not_nil(@i.tipo, "El atributo Tipo no puede estar vacío")
	end
	test "prioridad existe" do
		assert_not_nil(@i.prioridad, "El atributo Prioridad no puede estar vacío")
	end

end

