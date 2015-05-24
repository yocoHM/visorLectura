class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :usuario_actual, :logged_in?

  #metodo para saber si el usuario loggeado  puede hacer una accion 
  def usuario_actual
  	#se guarda al usuario actual que esta loggeado por cuestion de eficiencia
  	#para no accesar a la base de datos todo el tiempo
  	@usuario_actual ||= Alumno.find(session[:alumno_id]) if session[:alumno_id]
  end

  #metodo para saber si alguien esta loggeado
  def logged_in?
  	#devuelve un booleano para saber si hay un usuario loggeado o no. 
  	#para eso sirven los dos signos de exclamacion !!
  	!!usuario_actual
  end

#  def require_user
#    if !logged_in?
#      flash[:danger] = "You must be logged in to perform that action"
#      redirect_to recipes_path
#    end
#  end

end
