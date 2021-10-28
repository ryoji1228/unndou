Rails.application.routes.draw do
  root to: 'goals#index'
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :goals ,only: [:index, :create]

  
  resources :measurements ,only: [:index, :create, :new]

  resources :exercises
  resources :posts ,only:[:create, :index, :destroy]
  resources :likes ,only:[:create, :destroy, :index]
 
  namespace :admin do
    resources :posts, only: [:index, :destroy]
    resources :users, only: [:index, :destroy]
    resources :auth, only: [:new, :create]
    resources :works
  end
  
end
