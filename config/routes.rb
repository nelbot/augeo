Rails.application.routes.draw do  
  get '/' => 'users#new'

  post '/users' => 'users#create'

  get '/users/home' => 'users#index'
end
