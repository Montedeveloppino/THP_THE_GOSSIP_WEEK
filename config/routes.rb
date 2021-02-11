Rails.application.routes.draw do
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
    resources :gossip do
      resources :comments
    end
  #get'/team', to: 'team#team'
  #get'/contact', to: 'team#contact'
end
