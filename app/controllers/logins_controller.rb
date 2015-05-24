#este controller es para manejar los logins. Se usan sesiones que son controladas
#con cookies en el buscador.
class LoginsController < ApplicationController

	def new

	end

	def create
		alumno = Alumno.find_by(email: params[:email])

		if alumno && alumno.authenticate(params[:password])
			session[:alumno_id] = alumno.id
			#if current_user.admin?
				#redirect_to "/empleados/"
			#else 
				redirect_to '/home/'
			#end
		else
			flash.now[:danger] = "Tu usuario o contraseña es incorrecto"
			render 'new'
		end
	end

	def destroy
		session[:empleado_id] = nil
		flash[:success] = "Has cerrado sesión"
		redirect_to root_path
	end

end