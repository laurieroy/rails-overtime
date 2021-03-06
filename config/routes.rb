# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :audit_logs, except: [:new, :edit, :destroy] do
    member do
      get :confirm
    end
  end

  namespace :admin do
    resources :admin_users
    resources :posts
    resources :users
    resources :employees

    root to: "posts#index"
  end
    
  resources :posts do
    member do
      get :approve
    end
  end
  devise_for :users, skip: [:registrations]
  root to: "static#homepage"
end
