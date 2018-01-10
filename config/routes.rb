Rails.application.routes.draw do
  root 'application#index'
  
  resources :troopers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
