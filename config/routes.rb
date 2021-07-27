Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  post "/measurements", to: "measurements#create"
  get "/measurements", to: "measurements#index"
  get "/measurements/:id", to: "measurements#destroy"
  
  get "/exercises", to: "exercises#new"
  post "/exercises", to: "exercises#create"
  get "/exercises", to: "exercises#index"
  get "/exercises/:id/edit", to: "exercises#edit"
  patch "/exercises/:id/edit", to: "exercises#update"
  get "/exercises/:id", to: "exercises#show"
  delete "/exercises/:id", to: "exercises#destroy"
  
  post "/posts", to: "posts#create"
  get "/posts", to: "posts#index"
  delete "/posts",to: "posts#destroy"
  
  post "/likes", to: "likes#create"
  delete "/likes/:id", to: "likes#destroy"
  get "/likes", to: "likes#index"
  
  get "/admin-prefix/posts", to: "posts#index"
  delete "/admin-prefix/posts/:id",to: "posts#destroy"
  get "/admin-prefix/users", to: "users#index"
  delete "/admin-prefix/users/:id", to: "users#destroy"
  get "/admin-prefix/auth", to: "auth#new"
  post "/admin-prefix/auth", to: "auth#create"
  
  
  root to: 'statics#index'
  
end
