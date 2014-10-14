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
    @sustancia_quimica.save
#     respond_with(@sustancia_quimica)
  end

  def update
    @sustancia_quimica.update(sustancia_quimica_params)
#     respond_with(@sustancia_quimica)
  end

  def destroy
    @sustancia_quimica.destroy
#     respond_with(@sustancia_quimica)
  end

  private
    def set_sustancia_quimica
      @sustancia_quimica = SustanciaQuimica.find(params[:id])
    end

    def sustancia_quimica_params
      params.require(:sustancia_quimica).permit(:nombre, :pureza, :estado_materia, :controlado, :regimen_legal, :cantidad, :CAS, :uso, :status, :responsable, :ubicacion, :caducidad, :peligro)
    end
end
