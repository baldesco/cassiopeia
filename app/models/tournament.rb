class Tournament < ActiveRecord::Base

	belongs_to :user
	has_many :seasons

	#El nombre del torneo no puede estar en blanco
	validates :name, presence: true
	#El tipo de torneo solo puede ser (por ahora) nacional o internacional  
	validates :status, inclusion: { in: %w(Nacional Internacional), message: "Tipo de torneo inválido" }	

end
