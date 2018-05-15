Rails.application.routes.draw do
  get 'reservations/reserved_at:date'

  get 'reservations/event_category:collection'

  root to: 'pages#home'
  resources :places
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
end
