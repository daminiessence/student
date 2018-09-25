Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'students#index'
  resources :cities
  resources :students do
    collection do
      put :select 
    end
  end
  resources :courses


  devise_for :users, :controllers => { omniauth_callbacks: "users/omniauth_callbacks", confirmations: "users/confirmations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
