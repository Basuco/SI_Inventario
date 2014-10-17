class InstrumentosController < ApplicationController
  before_action :set_instrumento, only: [:show, :edit, :update, :destroy]

  def index
    @instrumentos = Instrumento.all
#     respond_with(@instrumentos)
  end

  def show
#     respond_with(@instrumento)
  end

  def new
    @instrumento = Instrumento.new
#     respond_with(@instrumento)
  end

  def edit
  end

  def create
    @instrumento = Instrumento.new(instrumento_params)
    respond_to do |format|
		if @instrumento.save
			format.html { redirect_to @instrumento, notice: 'Instrumento fue creado de forma exitosa.' }
			format.json { render :show, status: :created, location: @instrumento }
		else
			format.html { render :new }
			format.json { render json: @instrumento.errors, status: :unprocessable_entity }
		end
	end
#	@instrumento.save
#     respond_with(@instrumento)
  end

  def update
	  respond_to do |format|
		if @instrumento.update(instrumento_params)
			format.html { redirect_to @instrumento, notice: 'Instrumento fue actualizado de forma exitosa.' }
			format.json { render :show, status: :ok, location: @Instrumento }
		else
			format.html { render :edit }
			format.json { render json: @Instrumento.errors, status: :unprocessable_entity }
		end
	  end
#   @instrumento.update(instrumento_params)
#     respond_with(@instrumento)
  end

  def destroy
    @instrumento.destroy
	respond_to do |format|
      format.html { redirect_to instrumentos_url, notice: 'Instrumento fue eliminado de forma exitosa.' }
      format.json { head :no_content }
	end
#     respond_with(@instrumento)
  end

  private
    def set_instrumento
      @instrumento = Instrumento.find(params[:id])
    end

    def instrumento_params
      params.require(:instrumento).permit(:nombre, :marca, :modelo, :unidad_medida, :capacidad, :material, :uso, :estado, :ubicacion, :ultima_calibracion, :responsable, :no_bien_nac)
    end
end
