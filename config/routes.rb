Rails.application.routes.draw do
  resources :emails
  resources :collections
  resources :products
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'collections/show'
  get 'emails/new'
  get 'emails/show'
  post '/', :to => 'emails#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
