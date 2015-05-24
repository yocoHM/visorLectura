Rails.application.routes.draw do

  root 'logins#new'

  resources :alumnos, except: [:new, :destroy]
  resources :profesors, except: [:new, :destroy]

  get '/registro_alumno', to: 'alumnos#new'
  get '/registro_profesor', to: 'profesors#new'

  #necesario para el login
  get '/login/', to: 'logins#new'
  post '/login/', to: 'logins#create'
  get '/logout', to: 'logins#destroy'

  get '/home/', to: 'paginas#home'

  resources :clases, except: [:new, :destroy]
  get '/registro_clase', to: 'clases#new'

  resources :lecturas, except: [:new, :destroy]
  get 'registro_lectura', to: 'lecturas#new'

end
