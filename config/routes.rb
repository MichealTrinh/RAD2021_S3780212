Rails.application.routes.draw do
  resources :subscriptions
  resources :carts
  resources :users
  resources :images
  resources :collections
  resources :products
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'static_pages/menu'
  get 'static_pages/search'
  get 'static_pages/filter'
  post 'save_colors', :to => 'static_pages#save_colors'
  post 'save_size', :to => 'static_pages#save_size'
  post 'save_collections', :to => 'static_pages#save_collections'

  get 'incrementTimesSaved/:id', :to => 'application#incrementTimesSaved'

  get 'collections/show'

  get 'products/show'

  get 'popular',:to => 'products#popular'

  get 'users', :to => 'users#index'
  get 'signup', :to => 'users#new'

  get 'checkout', :to => 'carts#checkout'

  get '/subscribe', :to => 'subscriptions#subscribeUser'
  post '/', :to => 'subscriptions#checkExists'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
