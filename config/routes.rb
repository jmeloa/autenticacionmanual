Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :stories
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:create, :destroy, :new]
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
