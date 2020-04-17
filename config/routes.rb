Rails.application.routes.draw do
  resources :paths

  devise_for :users

  root 'welcome#index'
  get 'welcome/about'
end
