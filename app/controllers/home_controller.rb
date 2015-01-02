class HomeController < ApplicationController
  
  def index
      @titulo = "Home - Dashboard de Incidentes"
  end
  def about
    @titulo = "About - Dashboard de Incidentes"
  end
end
