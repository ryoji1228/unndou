Rails.application.routes.draw do
  root to: 'goals#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :goals, only: %i[index create]

  resources :measurements, only: %i[index create new]

  resources :exercises
  resources :posts, only: %i[create index destroy]
  resources :likes, only: %i[create destroy index]

  namespace :admin do
    resources :posts, only: %i[index destroy]
    resources :users, only: %i[index destroy]
    resources :auth, only: %i[new create]
    resources :works
  end
end
