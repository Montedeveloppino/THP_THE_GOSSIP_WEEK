Rails.application.routes.draw do
  resources :comments
  resources :gossip

  #get'/team', to: 'team#team'
  #get'/contact', to: 'team#contact'
end
