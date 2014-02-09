Myapp::Application.routes.draw do
  resources :resources

  resources :comments

  resources :posts

  resources :users

  root :to => 'visitors#new'
end
