class ProfesorsController < ApplicationController

	before_action :set_profesor, only: [:edit, :update, :show]

	def index
		@profesors = Profesor.all
	end

	def new
		@profesor = Profesor.new(materia_clave: params[:clase_clave])
	end

	def create
		@profesor = Profesor.new(profesor_params)
		if @profesor.save
			flash[:success] = "El profesor se ha creado satisfactoriamente"
			redirect_to 'paginas#home'
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @profesor.update(profesor_params)
			flash[:success] = "El profesor se actualizó satisfactoriamente"
			redirect_to profesors_path
		else
			render :edit
		end
	end

	def show
		@clase =  Clase.select("clases.nombre").where("clases.clave = ?", @profesor.materia_clave)
		@lectura = Lectura.select("lecturas.titulo").where("lecturas.matricula = ?", @profesor.matricula)
	end

	private

		def profesor_params
			params.require(:profesor).permit(:matricula, :nombre, :apellido, :email, :password, :materia_clave)
		end

		def set_profesor
			@profesor = Profesor.find(params[:id])
		end

end