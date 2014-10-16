class Instrumento < ActiveRecord::Base
	validates :ubicacion, presence: true
	validates :nombre, presence: true
	validates :no_bien_nac, presence: true, uniqueness: true
	validates :responsable, presence: true
end
