class Lectura < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :clase

	validates :titulo, presence: true, length: { minimum: 3, maximum: 100 }
	validates :tema, presence: true, length: { maximum: 100 }
	validates :matricula, presence: true
	validates :materia_clave, presence: true
end