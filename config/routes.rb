Rails.application.routes.draw do
  root 'top_page#top'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: 'users/registrations'}
  resources :users, only: [:show] do
    get :following, :followers, on: :member
  end
  resources :tweets, only: [:index, :new, :create, :destroy] do
    get 'home', on: :collection
  end
  
end
