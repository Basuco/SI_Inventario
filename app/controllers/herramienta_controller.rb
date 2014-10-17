class HerramientaController < ApplicationController
  before_action :set_herramientum, only: [:show, :edit, :update, :destroy]

  def index
    @herramienta = Herramientum.all
#     respond_with(@herramienta)
  end

  def show
#     respond_with(@herramientum)
  end

  def new
    @herramientum = Herramientum.new
#     respond_with(@herramientum)
  end

  def edit
  end

  def create
    @herramientum = Herramientum.new(herramientum_params)
	respond_to do |format|
		if @herramientum.save
			format.html { redirect_to @herramientum, notice: 'Herramienta fue creado de forma exitosa.' }
			format.json { render :show, status: :created, location: @herramientum }
		else
			format.html { render :new }
			format.json { render json: @herramientum.errors, status: :unprocessable_entity }
		end
	end
#    @herramientum.save
#     respond_with(@herramientum)
  end

  def update
	  respond_to do |format|
		if @herramientum.update(herramientum_params)
			format.html { redirect_to @herramientum, notice: 'Herramienta fue actualizado de forma exitosa.' }
			format.json { render :show, status: :ok, location: @Herramientum }
		else
			format.html { render :edit }
			format.json { render json: @Herramientum.errors, status: :unprocessable_entity }
		end
	  end
#    @herramientum.update(herramientum_params)
#     respond_with(@herramientum)
  end

  def destroy
    @herramientum.destroy
	respond_to do |format|
      format.html { redirect_to herramienta_url, notice: 'Herramienta fue eliminado de forma exitosa.' }
      format.json { head :no_content }
    end
#     respond_with(@herramientum)
  end

  private
    def set_herramientum
      @herramientum = Herramientum.find(params[:id])
    end

    def herramientum_params
      params.require(:herramientum).permit(:nombre, :marca, :tipo, :no_bien_nac, :estado, :uso, :responsable, :ubicacion, :material, :factura, :de_un_juego)
    end
end
