class Employee < ApplicationRecord
  
  ##Validations
	validates :fullname, presence: true

	#Moved to database level to enhance performace
	#validates :e_number, presence: true, uniqueness: true
end
