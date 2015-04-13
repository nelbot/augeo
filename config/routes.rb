Rails.application.routes.draw do  
  get '/' => 'users#new'
  resources :users do
  	resources :items
  end
end
