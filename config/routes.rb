Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index" # ルーティングを設定(1）
  resources :users, only: [:edit, :update] # ユーザー編集に必要なルーティング
end
