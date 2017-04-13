Rails.application.routes.draw do

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resources :home, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#show"

  resources :businesses, only: [:index, :show]
  resources :cities, only: [:index, :show]
  resources :categories, only: [:index, :show]

  namespace :admin do
    resources :categories
  end
end
