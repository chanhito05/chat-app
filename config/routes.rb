Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update]
  root to: "rooms#index" 
  resources :users, only: [:edit, :update] # ユーザー編集に必要なルーティング
  resources :rooms, only: [:new, :create]
end