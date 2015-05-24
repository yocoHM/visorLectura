class CreateProfesorAlumnos < ActiveRecord::Migration
  def change
    create_table :profesor_alumnos do |t|
    	t.string :alumno_matricula
    	t.string :profesor_matricula
    end
  end
end
