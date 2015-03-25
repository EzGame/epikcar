Rails.application.routes.draw do
  root 'home#show'
  resources :ad
  resources :search
  resources :home, only: [:show]
end
