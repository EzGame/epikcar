Rails.application.routes.draw do
  root 'home#show'
  get 's' => 'home#search', :as => :main_search
  get 'd/:advert_id' => 'home#detail', :as => :main_detail
end
