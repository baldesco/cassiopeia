class Goal < ActiveRecord::Base

	belongs_to :match
	belongs_to :player

	#Para validar que la edad de los jugdores tenga valores lógicos
	validates :minute, numericality: true
  	validates :minute, numericality: { only_integer: true, greater_than_or_equal_to: 0,message: "Valor no válido"}

	#Para validar que el tipo de gol tenga uno de los valores establecidos
	tipos=["Autogol","Pelota quieta","Jugada"]
	validates :goal_type, inclusion: { in: Model::tipos, message: "Posición no válida" }
  	#validates :goal_type, inclusion: { in: %w(Autogol Pelota Quieta Jugada), message: "Posición no válida" }

end
