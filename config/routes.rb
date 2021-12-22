Rails.application.routes.draw do
  devise_for :builders, controllers: {
    sessions:         "builders/sessions",
    passwords:        "builders/passwords",
    registrations:    "builders/registrations"
  }
  devise_for :users, controllers: {
    sessions:         "users/sessions",
    passwords:        "users/passwords",
    registrations:    "users/registrations"
  }
  root to: "builders#index"

  resources :builders 
  resources :guitars
  
end
