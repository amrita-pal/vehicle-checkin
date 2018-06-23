Rails.application.routes.draw do
  devise_for :users
  # devise_for :admins
  resources :welcome, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#index"
  resources :addresses
  resources :vehicles
  resources :flats
  resources :flat_ownerships
  resources :profiles
end
