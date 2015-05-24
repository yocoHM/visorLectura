class Clase < ActiveRecord::Base
	belongs_to :profesor

	has_many :lecturas

	has_many :alumno_clases
	has_many :alumnos, through: :alumno_clases

	validates :nombre, presence: true, length: { minimum: 3, maximum: 40 }
	validates :clave, presence: true, length: { maximum: 10 }, uniqueness: { case_sensitive: false }
end