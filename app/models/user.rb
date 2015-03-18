class User < ActiveRecord::Base

	has_many :tournaments
	
	#El usuario debe llenar los tres datos
	validates :username, :email, :password, presence: true
	#Validar correcto formato del email  
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, allow_blank: true
	
	validates :password, length: {in: 8..12, message:"El password debe tener entre 8 y 12 caracteres"}



end
