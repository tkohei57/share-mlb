Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :users, only: [:show]
  resources :articles do
    collection do
      get 'search'
    end
  end
  resources :articles, only: [:new, :create, :show, :edit, :update, :destroy]
end
