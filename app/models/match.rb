class Match < ActiveRecord::Base

	belongs_to :season
	has_many :goals
	has_many :substitutions

	
	#La fecha del partido no puede estar en blanco
	validates :match_date, presence: true

	#Para validar que los valores numéricos tengan valores lógicos
	validates :local_pos,:away_pos,:duration,:local_shots,:away_shots,:away_shots_targer,:local_shots_target, numericality: true
  	validates :local_pos,:away_pos, numericality: { greater_than: 0,less_than: 1,message: "Valor no válido"}
  	validates :duration,:local_shots,:away_shots,:away_shots_targer,:local_shots_target, numericality: { greater_than_or_equal_to: 0,message: "Valor no válido"}

  	#El número de tiros al arco no puede ser mayor al número total de tiros.
  	validates :local_shots, numericality: { greater_than_or_equal_to: :local_shots_target,message: "El número de tiros al arco no puede ser mayor al número total de tiros"}
  	validates :away_shots, numericality: { greater_than_or_equal_to: :away_shots_targer,message: "El número de tiros al arco no puede ser mayor al número total de tiros"}

  	
end
