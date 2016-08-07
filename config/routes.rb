Rails.application.routes.draw do
 
  devise_for :drivers, :path_prefix => 'gdte_drivers',  controllers: { registrations: "drivers/registrations" } 
  resources :drivers do
    resources :office_driver_comments
  end
  devise_for :users, :path_prefix => 'gdte_office', controllers: { registrations: "users/registrations" }
  resources :users
  
  root to: 'pages#index'    

  get 'office_dashboard' => 'users#dashboard', as: "office_dashboard"
  get 'driver_dashboard' => 'drivers#dashboard', as: "driver_dashboard"
 
end
