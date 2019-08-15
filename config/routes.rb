Rails.application.routes.draw do
  
  get '/' => "home#top"
  get 'about' => "home#about"
  get 'login' => "users#login_form"
  post 'login' => "users#login"
  post "logout" => "users#logout"

  # posts_routes
  get 'posts/index'
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  # users_routes
  post 'users/create' => 'users#create'
  get 'signup' => 'users#new'
  get 'users/index'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
