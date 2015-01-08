class IncidentesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
      @titulo = "Home - Dashboard de Incidentes"
      @incidentes = Incidente.all

      # Órden de tabla
      @incidentes = Incidente.order(sort_column + ' ' + sort_direction)
      
      
      # Parametros de busqueda
      #if params[:search]
       # @incidentes = Incidente.search(params[:search]).order("created_at ASC")
     # else
       # @incidentes = Incidente.order("id ASC")
     # end
     #@search = Incidente.search(params[:q])
     #@incidente = @search.result

  end
  
  def about
    @titulo = "About - Dashboard de Incidentes"
  end 
  
  def edit
      @titulo = "Editar Incidente - Dashboard de Incidentes"
      @incidente = Incidente.find(params[:id])
  end
  
  def update
      @incidente = Incidente.find(params[:id])
      if @incidente.update_attributes(incidente_params)
          redirect_to incidentes_path
      end
  end
  
  def new
    @incidente = Incidente.new
  end
  
  def create
    @incidente = Incidente.new(incidente_params)
    @incidente.save
    redirect_to incidentes_path
  end
  
  def destroy
    @incidente = Incidente.find(params[:id])
    @incidente.destroy
    redirect_to incidentes_path
  end
  
  private

  def sort_column
    params[:sort] || "id"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end
  
  def incidente_params
    params.require(:incidente).permit(:id, :asunto, :descripcion, :responsable, :tipo, :prioridad)
  end
  
end
