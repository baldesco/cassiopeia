class Team < ActiveRecord::Base

	has_many :season_teams
	has_many :seasons, through: :season_teams

	has_many :player_teams
	has_many :players, through: :player_teams

	#El nombre del equipo no puede estar en blanco
	validates :name, presence: true

end
