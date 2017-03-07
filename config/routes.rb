Rails.application.routes.draw do

  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts

  root 'posts#index'
end

