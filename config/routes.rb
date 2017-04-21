Rails.application.routes.draw do
  resources :products
  resources :purposes
  resources :cycles
  resources :cultivations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "products#index"
end
