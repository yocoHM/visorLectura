class AlumnoClase < ActiveRecord::Base
	belongs_to :alumno
	belongs_to :clase
end