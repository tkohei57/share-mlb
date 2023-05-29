Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :users, only: [:show]
  resources :articles, only: [:new, :create, :show, :edit, :update, :destroy]
end
