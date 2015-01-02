class HomeController < ApplicationController
  
  def index
      @titulo = "Home - Dashboard de Incidentes"
      @incidentes = Incidente.all
  end
  def about
    @titulo = "About - Dashboard de Incidentes"
  end
end
