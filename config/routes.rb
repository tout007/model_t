Rails.application.routes.draw do
  resources :cookings

  resources :products

  #root 'cookings#index'

  root 'products#index'

  get "/products", to: "products#index"
 
  resources :cookings, only: [:show, :edit, :update, :destroy]
  
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.httpsml
