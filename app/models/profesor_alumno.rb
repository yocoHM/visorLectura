class ProfesorAlumno < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :alumno
end