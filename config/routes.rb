Rails.application.routes.draw do
  root 'application#index'
  
  resources :troopers do
    patch :kill, :on => :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
