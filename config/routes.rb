Rails.application.routes.draw do
  get 'users/show'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks", registrations: 'users/registrations'}
  root 'top_page#top'
  resources :users, only: [:show]
  
end
