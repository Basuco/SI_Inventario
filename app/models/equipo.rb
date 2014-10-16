class Equipo < ActiveRecord::Base
	validates :serial, presence: true
	validates :no_bien_nac, presence: true, uniqueness: true
	validates :ubicacion, presence: true
	validates :responsable, presence: true
	validates :nombre, presence: true

end
