Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update]
  root to: "messages#index" # ルーティングを設定(1）
  resources :users, only: [:edit, :update] # ユーザー編集に必要なルーティング
  resources :rooms, only: [:new, :create]
end