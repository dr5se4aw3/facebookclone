Rails.application.routes.draw do
  #ユーザー管理機能のルーティング
  resources :users, only: [:new, :create, :show]

  #セッション管理機能のルーティング
  resources :sessions, only: [:new, :create, :destroy]

  #写真投稿機能のルーティング
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
