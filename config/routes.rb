Rails.application.routes.draw do
  root 'top_page#top'
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks", registrations: 'users/registrations'}
  resources :users, only: [:show]
  
end
