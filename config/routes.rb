Rails.application.routes.draw do
  get 'users/new'

  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signin',  to: 'sessions#create',         via: 'post'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match    '/signup',  to: 'users#new', via: 'get'
  match   '/signup',  to: 'users#create', via: 'post'


  root 'posts#index'

  resources :posts, only: [:new, :create, :index]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]


  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
