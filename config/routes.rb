Rails.application.routes.draw do

  root to: 'pages#home'
  resources :places do
    resources :reservations, only: [:create, :destroy]
  end
  devise_for :users
  resources :reservations, only: [:index]
end
