Myapp::Application.routes.draw do

  namespace :visitor do
    resources :resources, only: [:index, :show]
    resources :comments, only: [:index, :show]
    resources :posts, only: [:index, :show]
  end

  namespace :me do
    resources :users do
      resources :posts
      resources :comments
      resources :resources
      member do
        get :home
      end
    end
  end

  namespace :admin do
    resources :inforamtions
  end

  resource :login

  root :to => 'visitor#top'
end
