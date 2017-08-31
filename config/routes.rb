Rails.application.routes.draw do

  namespace :equipment do
    resources :reactors
    resources :transformers
    resources :lightning_arresters
    resources :switches
    resources :battery_banks
    resources :blades
  end
  resources :substations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
