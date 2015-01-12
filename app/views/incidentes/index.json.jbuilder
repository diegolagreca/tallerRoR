json.array!(@incidentes) do |incidente|
  json.extract! incidente, :id, :asunto, :descripcion, :responsable, :tipo, :prioridad
  json.url incidente_url(incidente, format: :json)
end
