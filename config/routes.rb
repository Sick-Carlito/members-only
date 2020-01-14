Rails.application.routes.draw do
  #root 'static_pages#home'

  get '/signup',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy'
  post '/signup',  to: 'sessions#create'


  root 'posts#index'

  resources :posts, only: [:new, :create, :index]


  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
