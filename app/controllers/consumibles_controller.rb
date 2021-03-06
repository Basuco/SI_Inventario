class ConsumiblesController < ApplicationController
  before_action :set_consumible, only: [:show, :edit, :update, :destroy]

  def index
    @consumibles = Consumible.all
#     respond_with(@consumibles)
  end

  def show
#     respond_with(@consumible)
  end

  def new
    @consumible = Consumible.new
#     respond_with(@consumible)
  end

  def edit
  end

  def create
    @consumible = Consumible.new(consumible_params)
	respond_to do |format|
		if @consumible.save
			format.html { redirect_to @consumible, notice: 'Consumible fue creado de forma exitosa.' }
			format.json { render :show, status: :created, location: @consumible }
		else
			format.html { render :new }
			format.json { render json: @consumible.errors, status: :unprocessable_entity }
		end
	end
#     respond_with(@consumible)
  end

  def update
    respond_to do |format|
      if @consumible.update(consumible_params)
        format.html { redirect_to @consumible, notice: 'Consumible fue actualizado de forma exitosa.' }
        format.json { render :show, status: :ok, location: @Consumible }
      else
        format.html { render :edit }
        format.json { render json: @Consumible.errors, status: :unprocessable_entity }
      end
    end
#     respond_with(@consumible)
  end

  def destroy
    @consumible.destroy
	respond_to do |format|
      format.html { redirect_to consumibles_url, notice: 'Consumible fue eliminadode forma exitosa.' }
      format.json { head :no_content }
    end
#     respond_with(@consumible)
  end

  private
    def set_consumible
      @consumible = Consumible.find(params[:id])
    end

    def consumible_params
      params.require(:consumible).permit(:nombre, :descripcion, :dimensiones, :material, :cantidad, :ubicacion, :Investigacion, :Docencia, :Extension, :Gestion, :responsable)
    end
end
