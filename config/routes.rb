Rails.application.routes.draw do
  get 'users/show'
  get 'users/update'
  get 'users/new'
  get 'users/create'
  get 'users/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'new/create'
  get 'new/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#index"
end
