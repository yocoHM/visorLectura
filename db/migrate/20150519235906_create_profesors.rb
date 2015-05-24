class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
    	t.string :matricula
    	t.string :nombre
    	t.string :apellido
    	t.string :email
    	t.string :materia_clave
    end
  end
end
