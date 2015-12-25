Rails.application.routes.draw do

  root to: 'noats#index'  
  resources :noats
end
