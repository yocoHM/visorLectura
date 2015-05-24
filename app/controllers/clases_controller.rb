class ClasesController < ApplicationController

	before_action :set_clase, only: [:edit, :update, :show]

	def index
		@clases = Clase.all
	end

	def new
		@clase = Clase.new
	end

	def create
		@clase = Clase.new(clase_params)
		if @clase.save
			redirect_to 'paginas#home'
			flash[:success] = "La materia se creó satisfactoriamente"
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @clase.update(clase_params)
			flash[:success] = "La clase se actualizó satisfactoriamente"
			redirect_to clases_path
		else
			render :edit
		end
	end

	def show
		@lectura = Lectura.select("lecturas.titulo").where("lecturas.materia_clave = ?", @clase.clave)
	end

	private

		def clase_params
			params.require(:clase).permit(:clave, :nombre)
		end

		def set_clase
			@clase = Clase.find(params[:id])
		end

end