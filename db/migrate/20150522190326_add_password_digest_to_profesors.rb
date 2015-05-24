class AddPasswordDigestToProfesors < ActiveRecord::Migration
  def change
  	add_column :profesors, :password_digest, :string
  end
end
