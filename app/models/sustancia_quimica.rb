class SustanciaQuimica < ActiveRecord::Base
	validates :ubicacion, presence: true
	validates :nombre, presence: true
	validates :CAS, presence: true, uniqueness: true
	validates :responsable, presence: true
end
