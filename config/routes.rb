Myapp::Application.routes.draw do
  resources :resources, only: [:index, :show]

  resources :comments, only: [:index, :show]

  resources :posts, only: [:index, :show]

  resources :users do
    resources :posts
    resources :comments
    resources :resources
    member do
      get :home
    end
  end

  resource :login

  resources :visitors, only: [:index]

  root :to => 'visitors#top'
end
