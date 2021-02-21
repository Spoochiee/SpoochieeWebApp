Rails.application.routes.draw do

  devise_for :users
  get 'homeworktotal/total'
  resources :mathematics
  resources :chemistries
  resources :biologies
  root 'home#index'
end
