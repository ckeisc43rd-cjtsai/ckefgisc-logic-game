Rails.application.routes.draw do
  devise_for :users
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :slots
  post :spin, :to => 'slots#update_roulettes', as: :spin
  post '/slots/update_roulettes', to: 'slots#update_roulettes'  

  resources :menus
  root "menus#index"
end
