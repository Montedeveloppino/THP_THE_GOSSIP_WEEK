Rails.application.routes.draw do
  resources :users
    resources :gossip do
      resources :comments
    end
  #get'/team', to: 'team#team'
  #get'/contact', to: 'team#contact'
end
