Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index'

  resources :videos, except: [:edit, :update, :show]
end
