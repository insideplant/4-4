# Rails.application.routes.draw do
#   devise_for :users
#   root 'post_images#index'
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :post_images, only: [:new, :create, :index, :show, :destroy] do
#   resources :post_comments, only: [:create, :destroy]
#   end
#   end

Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show] do
    resource :favorites, only: [:create, :destroy]
    
    resources :post_comments, only: [:create, :destroy]
  end
 end