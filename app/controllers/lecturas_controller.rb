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
		if @lectura.update(lectura_params)
			flash[:success] = "La lectura se actualizó satisfactoriamente"
			redirect_to lecturas_path
		else
			render :edit
		end
	end

	def show
		
	end

	private

		def lectura_params
			params.require(:lectura).permit(:titulo, :tema, :matricula, :materia_clave, :pdf)
		end

		def set_lectura
			@lectura = Lectura.find(params[:id])
		end

end