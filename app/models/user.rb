class User < ApplicationRecord
	has_secure_password
	before_save :downcase_email
	validacion_email = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i #Copiarelcorreo
	validates :name, presence: true #Validar
	validates :email, presence: true, format: {with: validacion_email}, uniqueness: {case_sentive: false}, length:{maximum:100}
	validates :password, length:{minimum:6}, presence: true, allow_nil: true #Validar

	private 
	def downcase_email #Convertir todo a minuscula
	self.email.downcase!
	end
end
