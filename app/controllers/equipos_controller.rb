class EquiposController < ApplicationController
  before_action :set_equipo, only: [:show, :edit, :update, :destroy]

  def index
    @equipos = Equipo.all
#     respond_with(@equipos)
  end

  def show
    respond_with(@equipo)
  end

  def new
    @equipo = Equipo.new
#     respond_with(@equipo)
  end

  def edit
  end

  def create
    @equipo = Equipo.new(equipo_params)
    respond_to do |format|
		if @equipo.save
			format.html { redirect_to @equipo, notice: 'Consumible was successfully created.' }
			format.json { render :show, status: :created, location: @equipo }
		else
			format.html { render :new }
			format.json { render json: @equipo.errors, status: :unprocessable_entity }
		end
	end
	#@equipo.save
    #respond_with(@equipo)
  end

  def update
	  respond_to do |format|
      if @equipo.update(consumible_params)
        format.html { redirect_to @equipo, notice: 'Consumible was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipo }
      else
        format.html { render :edit }
        format.json { render json: @equipo.errors, status: :unprocessable_entity }
      end
    end
    #@equipo.update(equipo_params)
#     respond_with(@equipo)
  end

  def destroy
    @equipo.destroy
	respond_to do |format|
      format.html { redirect_to equipos_url, notice: 'Consumible was successfully destroyed.' }
      format.json { head :no_content }
    end
#     respond_with(@equipo)
  end

  private
    def set_equipo
      @equipo = Equipo.find(params[:id])
    end

    def equipo_params
      params.require(:equipo).permit(:nombre, :marca, :modelo, :serial, :no_bien_nac, :status, :ultima_calibracion, :uso, :responsable, :ubicacion, :fecha_adquisicion, :orden_compra, :costo, :factura)
    end
end
