Rails.application.routes.draw do
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  root controller: :products , action: :index
end
