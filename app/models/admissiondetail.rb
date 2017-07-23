class Admissiondetail < ApplicationRecord
	validates_presence_of :cost
	validates_presence_of :person_id
	validates_presence_of :admission_id
	validates_presence_of :needed_document
	validates_presence_of :last_admission_date
end
