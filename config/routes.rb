Rails.application.routes.draw do
  root 'home#show'
  get 's' => 'home#search', :as => :main_search
end
