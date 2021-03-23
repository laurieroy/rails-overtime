# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :audit_logs
  namespace :admin do
      resources :posts
      resources :users
      resources :admin_users

      root to: "posts#index"
    end
    
  resources :posts
  devise_for :users, skip: [:registrations]
  root to: "static#homepage"
end
