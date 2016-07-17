Rails.application.routes.draw do
 
  devise_for :drivers, :path_prefix => 'my',  controllers: { registrations: "drivers/registrations" } 
  resources :drivers
  devise_for :admin_users, controllers: { registrations: "admin_users/registrations" }
  devise_for :dispatchers, controllers: { registrations: "dispatchers/registrations" }

  root 'pages#index'
  resources :driver_profiles, only: [:index, :show]

end
