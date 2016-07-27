Rails.application.routes.draw do
 
  devise_for :drivers, :path_prefix => 'gdte',  controllers: { registrations: "drivers/registrations" } 
  resources :drivers
  devise_for :admin_users, controllers: { registrations: "admin_users/registrations" }
  devise_for :dispatchers, controllers: { registrations: "dispatchers/registrations" }
  resources :dispatchers

  root to: 'pages#index' 

  get 'drivers_dashboard' => 'drivers#dashboard', as: "drivers_dashboard"
  get 'dispatchers_dashboard' => 'dispatchers#dashboard', as: "dispatchers_dashboard"
 
end
