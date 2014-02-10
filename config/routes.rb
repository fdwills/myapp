Myapp::Application.routes.draw do
  resources :resources, only: [:index, :show]

  resources :comments, only: [:index, :show]

  resources :posts, only: [:index, :show]

  resources :users do
    resources :posts
    resources :comments
    resources :resources
  end

  resource :login


  root :to => 'visitors#index'
end
