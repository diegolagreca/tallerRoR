module ApplicationHelper
# Defino la función "sortable" para ordenar una tabla clickeando en el título de su columna

  def sortable(column, title = nil)
    title ||= column.titleize
    
    # Determina dirección del ordenamiento (ascendente o descendiente)
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end
end