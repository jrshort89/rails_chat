Rails.application.routes.draw do
  get 'users/show'
  get 'users/update'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  get 'sessions/new'
  post 'login', to: 'sessions#create'
  get 'sessions/destroy'
  get 'message', to: 'messages#index'
  post 'message', to: 'messages#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"

  mount ActionCable.server, at: '/cable'
end
