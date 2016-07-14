Rails.application.routes.draw do
    
  devise_for :admin_users, controllers: { registrations: "admin_users/registrations" }
  devise_for :dispatchers, controllers: { registrations: "dispatchers/registrations" }

  root 'pages#index'
  resources :driver_applications 

end
