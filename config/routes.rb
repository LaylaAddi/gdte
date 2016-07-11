Rails.application.routes.draw do
    
  devise_for :dispatchers
  root 'pages#index'

end
