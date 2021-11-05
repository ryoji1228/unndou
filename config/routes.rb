Rails.application.routes.draw do
  root to: 'goals#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :goals, only: %i[index create]

  resources :measurements, only: %i[index create new]

  resources :exercises
  resources :posts, only: %i[create index show destroy]
  resources :likes, only: %i[create destroy index]

end
