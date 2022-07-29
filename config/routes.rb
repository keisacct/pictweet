Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets do #, only: [:index, :new, :destroy, :edit, :update, :show]
    resources :comments, only: :create
    collection do
        get 'search'
    end
  end
  resources :users, only: :show
end
