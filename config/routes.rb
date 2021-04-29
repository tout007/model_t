Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]  
  
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'

  get 'signup', to: 'logins#new', as: 'signup'  
  post 'login', to: 'sessions#create', as: 'login'  
  get 'logout', to: 'sessions#destroy', as: 'logout'  
   
  resources :logins
  resources :cookings
  resources :products

  #root 'cookings#index'
  #root 'products#index'
  get "/products", to: "products#index"
 
  resources :cookings, only: [:show, :edit, :update, :destroy]
  
  get 'logins', to: 'login#new' 
  #get 'logins/index'
  root 'logins#index' 

end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.httpsml
