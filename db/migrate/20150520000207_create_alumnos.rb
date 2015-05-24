class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
    	t.string :matricula
    	t.string :nombre
    	t.string :apellido
    	t.string :email
    end
  end
end
