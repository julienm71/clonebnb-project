Rails.application.routes.draw do

  root to: 'pages#home'
  resources :places
  devise_for :users
end
