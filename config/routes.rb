Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  resources :sessions, only: [:new, :create, :destroy]  
  get 'signup', to: 'logins#new', as: 'signup'  
  get 'login', to: 'sessions#new', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  
  resources :users  

  resources :logins
  resources :cookingss
  resources :products

  #root 'cookings#index'
  #root 'products#index'
  get "/products", to: "products#index"
 
  resources :cookings, only: [:show, :edit, :update, :destroy]
  
  get 'sessions/index'
  # root 'login/index'
  #root 'sessions#index'
  

end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.httpsml
