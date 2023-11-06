Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  
  # get 'homes/top'
  root to: "homes#top"
  get 'homes/about' => "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
