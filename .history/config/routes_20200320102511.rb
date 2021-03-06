# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/index'

  resources :users, only: %i[create show index]
  resources :profiles

  root 'home#index'
end
