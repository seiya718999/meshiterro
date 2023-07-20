Rails.application.routes.draw do

  devise_for :users
  root "homes#top"

  resources :post_images, only: [:new, :create, :index, :show]
  post 'post_images/new' => 'post_images#create'

  get 'homes/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
