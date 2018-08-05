Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  root to: 'pages#home'

  resources :tournaments  do
    resources :participations, only: [:new, :create]
  end
  resources :tournaments do 
  	resources :games, only: [:create, :index]

  	
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
