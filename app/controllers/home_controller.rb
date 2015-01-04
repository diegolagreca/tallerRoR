class HomeController < ApplicationController
  
  def index
      @titulo = "Home - Dashboard de Incidentes"
      @incidentes = Incidente.all
  end
  def edit
      @titulo = "Editar Incidente - Dashboard de Incidentes"
      @incidente = Incidente.find(params[:id])
  end
  def update
      @titulo = "Editar Incidente - Dashboard de Incidentes"
      @incidente = Incidente.find(params[:id])
      @incidente = Incidente.update_attributes(params[:incidente])
      redirect_to incidentes_path
  end
  def about
    @titulo = "About - Dashboard de Incidentes"
  end
end
