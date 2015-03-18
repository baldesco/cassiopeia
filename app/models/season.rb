class Season < ActiveRecord::Base

	belongs_to :tournament
	has_many :matches
	#Para la siguiente relación habría que usar este código y crear un modelo intermedio (?)
	has_many :season_teams
	has_many :teams, through: :season_teams
	
	#has_many :teams   

	#El nombre de la temporada no puede estar en blanco
	validates :name, presence: true
	

end
