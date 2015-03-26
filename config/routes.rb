Rails.application.routes.draw do
  root 'home#show'

  resources :ad do
    resources :report, :only => [:show, :update, :new, :create, :edit]
  end
end
