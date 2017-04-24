Rails.application.routes.draw do
  devise_for :users
	resources :products_purposes_relations
  resources :products
  resources :purposes
  resources :cycles
  resources :cultivations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "products#index"
end
