Rails.application.routes.draw do
 
  devise_for :drivers, :path_prefix => 'my',  controllers: { registrations: "drivers/registrations" } 
  resources :drivers, except: [:show]
  devise_for :admin_users, controllers: { registrations: "admin_users/registrations" }
  devise_for :dispatchers, controllers: { registrations: "dispatchers/registrations" }

  root to: 'pages#index' 
  get "drivers/dashboard" 
 
end
