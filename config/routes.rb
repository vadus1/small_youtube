Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :videos, except: [:edit, :update] do
    put :publish, on: :member
    resources :comments, only: [:index, :create, :destroy]
  end
end
