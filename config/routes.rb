Rails.application.routes.draw do
  devise_for :users

  namespace :medition do
    resources :calibrations
    resources :measurement_equipments
  end

  namespace :equipment do
    resources :reactors
    resources :transformers
    resources :lightning_arresters
    resources :switches
    resources :battery_banks
    resources :blades
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
