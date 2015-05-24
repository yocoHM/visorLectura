class CreateLecturas < ActiveRecord::Migration
  def change
    create_table :lecturas do |t|
    	t.string :titulo
    	t.string :tema
    	t.string :matricula
    	t.string :materia_clave
    end
  end
end
