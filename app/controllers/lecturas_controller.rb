class LecturasController < ApplicationController

	before_action :set_lectura, only: [:edit, :update, :show]

	def index
		@lecturas = Lectura.all
	end

	def new
		@lectura = Lectura.new(matricula: params[:profesor_matricula])
		@lectura = Lectura.new(materia_clave: params[:clase_clave])
	end

	def create
		@lectura = Lectura.new(lectura_params)
		if @lectura.save
			redirect_to 'paginas#home'
			flash[:success] = "La lectura se creó satisfactoriamente"
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		
	end

	def show
		
	end

	private

		def lectura_params
			params.require(:lectura).permit(:titulo, :tema, :matricula, :materia_clave)
		end

		def set_clase
			@lectura = Lectura.find(params[:id])
		end

end