class Lectura < ActiveRecord::Base
	belongs_to :profesor
	belongs_to :clase

	validates :titulo, presence: true, length: { minimum: 3, maximum: 100 }
	validates :tema, presence: true, length: { maximum: 100 }
	validates :matricula, presence: true
	validates :materia_clave, presence: true

	has_attached_file :pdf
	do_not_validate_attachment_file_type :pdf
	#validates_attachment_content_type :pdf, :content_type => ["pdf/pdf"]
end