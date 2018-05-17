Rails.application.routes.draw do

  root to: 'pages#home'
  get "pages/about", to: "pages#about", as: "about"
  resources :places
  resources :reservations, only: [:index, :create, :new, :destroy]
  devise_for :users

end
