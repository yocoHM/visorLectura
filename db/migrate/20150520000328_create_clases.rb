class CreateClases < ActiveRecord::Migration
  def change
    create_table :clases do |t|
    	t.string :clave
    	t.string :nombre
    end
  end
end
