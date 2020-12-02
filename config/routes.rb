Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :wines, only: [:index, :show] do
    resources :user_selections, only: [:new, :create]
  end
  resources :user_selections, only: [:index, :destroy] do
    resources :ratings, only: [:new, :create]
  end
end
