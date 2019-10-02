Rails.application.routes.draw do
  resources :users
  resources :karmas 
  resources :groups
  resources :prefills 
  resources :group_users

  root 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
