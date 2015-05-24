class CreateAlumnoClases < ActiveRecord::Migration
  def change
    create_table :alumno_clases do |t|
    	t.string :alumno_matricula
    	t.string :materia_clave
    end
  end
end
