Rails.application.routes.draw do
  resources :posts
  #resources :users
  #we want to display tags
  resources :tags, only: [:index, :show]
  
  devise_for :users
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
