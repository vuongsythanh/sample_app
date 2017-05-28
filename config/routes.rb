Rails.application.routes.draw do

  get "password_resets/new"
  get "password_resets/edit"

  root "static_pages#home"
  get "/hello", to: "application#hello"
  get "/home", to: "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/contact", to: "static_pages#contact"


  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
