Rails.application.routes.draw do
  resources :companies
  resources :projects
  resources :analists
  get 'dashboard/index'
  devise_for :users
  resources :periods
  resources :employees

  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
