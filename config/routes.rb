Rails.application.routes.draw do
  get'/home', to: 'home#home'
  get'/index', to: 'gossip#index'
  get 'static_pages/contact'
  get 'static_pages/team'
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
    resources :gossip do
      resources :comments
    end
end
