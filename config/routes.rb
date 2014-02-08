Myapp::Application.routes.draw do
  resources :posts

  resources :users

  root :to => 'visitors#new'
end
