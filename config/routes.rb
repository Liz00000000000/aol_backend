Rails.application.routes.draw do
  resources :interests
  resources :instant_messages
  resources :emails
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end