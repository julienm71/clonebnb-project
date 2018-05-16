Rails.application.routes.draw do

  root to: 'pages#home'
  resources :places
  resources :reservations, only: [:index, :create, :new, :destroy]
  devise_for :users

end
