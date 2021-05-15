Rails.application.routes.draw do
  resources :collections
  resources :products
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/help'
  get 'collections/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
