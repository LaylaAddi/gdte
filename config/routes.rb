Rails.application.routes.draw do
    
  devise_for :dispatchers
  root 'pages#index'
  resources :driver_applications 

end
