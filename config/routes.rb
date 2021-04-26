Rails.application.routes.draw do
  resources :cookings

  resources :products

  #root 'cookings#index'

  root 'product#index'

  get "/products", to: "products#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
