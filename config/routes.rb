Rails.application.routes.draw do
  namespace :equipment do
    resources :reactors
    resources :transformers
  end
  resources :substations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
