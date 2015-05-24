class AlumnosController < ApplicationController

	before_action :set_alumno, only: [:edit, :update, :show]

	def index
		@alumnos = Alumno.all
	end

	def new
		@alumno = Alumno.new
	end

	def create
		@alumno = Alumno.new(alumno_params)
		if @alumno.save
			flash[:success] = "La cuenta se creó exitosamente"
			#session[:alumno_id] = @alumno.id
			redirect_to 'paginas#home'
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

		def alumno_params
			params.require(:alumno).permit(:matricula, :nombre, :apellido, :email, :password)
		end

		def set_alumno
			@alumno = Alumno.find(params[:id])
		end

end