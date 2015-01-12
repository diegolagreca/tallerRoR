class IncidentesController < ApplicationController
  before_action :set_incidente, only: [:show, :edit, :update, :destroy]


  # GET /incidentes
  # GET /incidentes.json
  def index

    # Título de la página
    @titulo = "Inicio" 
    
    # Lógica de busqueda  
    @q = Incidente.ransack(params[:q])
    @incidentes = @q.result(distinct: true)  
    @q.build_condition 

  end

  def grafica

    # Título de la página
    @titulo = "Gráfica de incidentes"   
    
    # Recursos de busqueda para cargar datos en gráfica
    @q = Incidente.ransack(params[:q])
    @incidentes = @q.result(distinct: true)  
    @q.build_condition 
  end

  # GET /incidentes/1
  # GET /incidentes/1.json
  def show

    # Título de la página
    @titulo = "Contenido del incidente"   

    @incidentes = Incidente.all

  end

  # GET /incidentes/new
  def new

    # Título de la página
    @titulo = "Nuevo incidente"   

    @incidente = Incidente.new
  end

  # GET /incidentes/1/edit
  def edit

    # Título de la página
    @titulo = "Actualizar incidente"   
  end

  # POST /incidentes
  # POST /incidentes.json
  def create
    @incidente = Incidente.new(incidente_params)

    respond_to do |format|
      if @incidente.save
        format.html { redirect_to @incidente, notice: 'Incidente ha sido creado correctamente.' }
        format.json { render :show, status: :created, location: @incidente }
      else
        format.html { render :new }
        format.json { render json: @incidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incidentes/1
  # PATCH/PUT /incidentes/1.json
  def update
    respond_to do |format|
      if @incidente.update(incidente_params)
        format.html { redirect_to @incidente, notice: 'Incidente actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @incidente }
      else
        format.html { render :edit }
        format.json { render json: @incidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incidentes/1
  # DELETE /incidentes/1.json
  def destroy
    @incidente = Incidente.find(params[:id])
    @incidente.destroy
    respond_to do |format|
      format.html { redirect_to incidentes_url, notice: 'Incidente eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incidente
      @incidente = Incidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incidente_params
      params.require(:incidente).permit(:asunto, :descripcion, :responsable, :tipo, :prioridad)
    end
end
