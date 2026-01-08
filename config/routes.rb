Rails.application.routes.draw do
  get 'users/edit'
  get 'users/index'
  get 'users/show'
  root to: 'homes#top'
  get 'homes/about' => 'homes#about', as: 'about'
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
