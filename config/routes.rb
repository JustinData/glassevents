Glassevents::Application.routes.draw do

  resources :users, only: [:new, :create, :show]


end
