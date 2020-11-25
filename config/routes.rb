Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    post "/like", to: "likes#like_toggle"
    post "/dislike", to: "dislike#dislike_toggle"
    resources :ments, only: [:create, :destroy]
  end
  resources :follows, only: [:create, :destroy]
  
  get 'mypage/index'
  get 'tagpage/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
