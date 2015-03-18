class Player < ActiveRecord::Base

	has_many :player_teams
	has_many :teams, through: :player_teams

	has_many :player_substitutions
	has_many :substitutions, through: :player_substitutions
	has_many :goals

	#El nombre del jugador no puede estar en blanco
	validates :name, presence: true

	#Para validar que la edad de los jugdores tenga valores lógicos
	validates :age, numericality: true
  	validates :age, numericality: { only_integer: true, greater_than: 1,less_than: 100,message: "Valor no válido"}

  	#Para validar que la posición del jugador tenga uno de los valores establecidos
  	validates :position, inclusion: { in: %w(Arquero Defensa Mediocampista Delantero), message: "Posición no válida" }
end
