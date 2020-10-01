Rails.application.routes.draw do
  root 'top_page#top'

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks", registrations: 'users/registrations'}

  resources :users, only: [:show] do
    get :following, :followers, on: :member
  end

  resources :tweets, only: [:index, :new, :create, :destroy] do
    get 'home', on: :collection
    #resources :likes, only: [:create, :destroy]
  end
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

  resources :relationships,       only: [:create, :destroy]
  
end
