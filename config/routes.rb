Rails.application.routes.draw do
  resources :activities_dones
  resources :activities
  resources :users
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
