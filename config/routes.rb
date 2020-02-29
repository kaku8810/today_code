Rails.application.routes.draw do
  root 'top_page#top'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: 'users/registrations'}
  resources :users, only: [:show]
  resources :tweets,          only: [:new, :create, :destroy]
  
end
