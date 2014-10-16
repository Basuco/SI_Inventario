class Consumible < ActiveRecord::Base
	validates :ubicacion, presence: true
	validates :nombre, presence: true
	validates :responsable, presence: true

end
