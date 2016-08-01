Rails.application.routes.draw do
 
  devise_for :drivers, :path_prefix => 'gdte',  controllers: { registrations: "drivers/registrations" } 
  resources :drivers
  devise_for :users, controllers: { registrations: "users/registrations" }

  root to: 'pages#index' 

  get 'office_dashboard' => 'users#dashboard', as: "office_dashboard"
  get 'driver_dashboard' => 'drivers#dashboard', as: "driver_dashboard"
 
end
