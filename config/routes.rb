Rails.application.routes.draw do
  resources :news
  resources :resales
  #get 'welcome/index'

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  resources :banners
  devise_for :users
	resources :products_purposes_relations
  resources :products do
    resources :products_purposes_relations
  end
  resources :purposes
  resources :cycles
  resources :cultivations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "welcome#index"

  # root com pagina estatica pode ser configurado em config/initializers/high_voltage.rb

end
