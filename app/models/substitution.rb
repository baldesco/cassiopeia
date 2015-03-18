class Substitution < ActiveRecord::Base

	belongs_to :match
	has_many :player_substitutions
	has_many :players, through: :player_substitutions

	#Para validar que la edad de los jugdores tenga valores lógicos
	validates :minute, numericality: true
  	validates :minute, numericality: { only_integer: true, greater_than_or_equal_to: 0,message: "Valor no válido"}

end
