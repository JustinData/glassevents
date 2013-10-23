Glassevents::Application.routes.draw do

  # root to "/main_page/#index"

  resources :users, only: [:new, :create, :show]

  resource :session

  root 'events#index'

  resources :services

  resources :admins do
  	member do
  		post 'promote'
  	end
  end

  resources :quotes

end
