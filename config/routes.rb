Rails.application.routes.draw do
  resources :activity_dones
  get 'home/index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :activities
  resources :locations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
  # root to:"sessions#new"


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
