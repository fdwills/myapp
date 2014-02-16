Myapp::Application.routes.draw do

  namespace :visitor do
    get :about
    resources :users, only: [:show] do
      member do
        get :home
      end
    end
    resources :resources, only: [:index, :show]
    resources :comments, only: [:index, :show]
    resources :posts, only: [:index, :show] do
      member do
        get :view
      end
    end
    resources :inforamtions, only: [:index, :show]
  end

  namespace :me do
    resources :users do
      resources :posts do
        member do
          post :add
          get :view
        end
      end
      resources :post_resources, only: [:create, :destroy]
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
