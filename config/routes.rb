Rails.application.routes.draw do
  root to: 'pages#home'
   resources :places
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
end