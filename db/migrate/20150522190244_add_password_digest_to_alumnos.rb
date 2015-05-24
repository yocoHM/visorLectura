class AddPasswordDigestToAlumnos < ActiveRecord::Migration
  def change
  	add_column :alumnos, :password_digest, :string
  end
end
