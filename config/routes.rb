Rails.application.routes.draw do

  devise_for :users
  resources :events
  root 'welcome#index'

  get 'characters' => 'characters#index'

  get 'events' => 'events#index'

  get 'search' => 'search#search_results'

  get 'search_results' => 'search#search_results'
  get 'search/search_results' => 'search#search_results' 

 


 

  resources :sentiences
  resources :genders
  resources :factions
  resources :races
  resources :characters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
