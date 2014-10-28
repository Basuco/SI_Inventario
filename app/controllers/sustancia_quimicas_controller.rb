class SustanciaQuimicasController < ApplicationController
  before_action :set_sustancia_quimica, only: [:show, :edit, :update, :destroy]

  def index
    @sustancia_quimicas = SustanciaQuimica.all
#     respond_with(@sustancia_quimicas)
  end

  def show
#     respond_with(@sustancia_quimica)
  end

  def new
    @sustancia_quimica = SustanciaQuimica.new
#     respond_with(@sustancia_quimica)
  end

  def edit
  end

  def create
    @sustancia_quimica = SustanciaQuimica.new(sustancia_quimica_params)
    respond_to do |format|
		if @sustancia_quimica.save
			format.html { redirect_to @sustancia_quimica, notice: 'Sustancia Quimica fue creada de forma exitosa.' }
			format.json { render :show, status: :created, location: @sustancia_quimica }
		else
			format.html { render :new }
			format.json { render json: @sustancia_quimica.errors, status: :unprocessable_entity }
		end
	end
#     @sustancia_quimica.save
#     respond_with(@sustancia_quimica)
  end

  def update
#     @sustancia_quimica.update(sustancia_quimica_params)
	 respond_to do |format|
		if @sustancia_quimica.update(sustancia_quimica_params)
			format.html { redirect_to @sustancia_quimica, notice: 'Sustancia Quimica fue actualizado de forma exitosa.' }
			format.json { render :show, status: :ok, location: @sustancia_quimica }
		else
			format.html { render :edit }
			format.json { render json: @sustancia_quimica.errors, status: :unprocessable_entity }
		end
	  end
#     respond_with(@sustancia_quimica)
  end

  def destroy
	  @sustancia_quimica.destroy
	respond_to do |format|
      format.html { redirect_to sustancia_quimicas_url notice: 'Sustancia Quimica fue eliminado de forma exitosa.' }
      format.json { head :no_content }
	end
#     @sustancia_quimica.destroy
#     respond_with(@sustancia_quimica)
  end

  private
    def set_sustancia_quimica
      @sustancia_quimica = SustanciaQuimica.find(params[:id])
    end

    def sustancia_quimica_params
      params.require(:sustancia_quimica).permit(:nombre, :pureza, :estado_materia, :controlado, :regimen_legal, :cantidad, :CAS, :uso, :status, :responsable, :ubicacion, :caducidad, :peligro, :Investigacion2, :Docencia2, :Extension2, :Gestion2, :Toxico, :Inflamable, :Comburente, :Corrosivo, :Explosivo, :Nocivo, :Irritante, :RI7, :RI4, :controlado)
    end
end
