Rails.application.routes.draw do
  resources :users
  resources :karmas 
  resources :groups
  resources :prefills 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
