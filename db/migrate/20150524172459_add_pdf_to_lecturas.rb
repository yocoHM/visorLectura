class AddPdfToLecturas < ActiveRecord::Migration
  def change
  	add_column :lecturas, :pdf_file_name, :string
  	add_column :lecturas, :pdf_content_type, :string
  	add_column :lecturas, :pdf_file_size, :integer
  	add_column :lecturas, :pdf_updated_at, :datetime
  end
end
