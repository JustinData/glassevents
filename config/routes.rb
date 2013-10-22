Glassevents::Application.routes.draw do

  # root to "/main_page/#index"

  resources :users, only: [:new, :create, :show]

  resource :session

  root 'events#index'

  resources :services

end
