Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :teams, only: [:index, :update]
      resources :comments, only: [:index, :update]
      resources :likes, only: [:index, :update]
      resources :posts, only: [:index, :update]
      resources :users, only: [:index, :update]
    end
  end
end
