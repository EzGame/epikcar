Rails.application.routes.draw do
  root 'home#show'

  resources :ad do
    resources :report, :only => [:new, :create, :update, :edit]
  end
end
