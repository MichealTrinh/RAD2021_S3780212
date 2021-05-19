Rails.application.routes.draw do
  resources :carts
  resources :users
  resources :images
  resources :emails
  resources :collections
  resources :products
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'collections/show'
  get 'emails/new'
  get 'emails/show'
  get 'products/show'
  get 'popular',:to => 'products#popular'
  get 'users', :to => 'users#index'
  get 'signup', :to => 'users#new'
  get 'checkout', :to => 'carts#checkout'

  post '/', :to => 'emails#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
