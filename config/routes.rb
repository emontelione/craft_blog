Rails.application.routes.draw do
  
  resources :projects do
  	resources :images
  end
  
  root 'projects#index'
end
