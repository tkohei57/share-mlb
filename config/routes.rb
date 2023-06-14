Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :users, only: [:show]
  resources :articles do
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
    collection do
      get 'team_search'
    end
    resource :likes, only: [:create, :destroy]
  end
  resources :articles, only: [:new, :create, :show, :edit, :update, :destroy]
  get "tag_search", to: "articles#tag_search"
  resources :users do
    resource :relationships, only: [:create, :destroy]
  end
end
