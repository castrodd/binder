Rails.application.routes.draw do
  resources :recipes do
    resources :posts
  end

  get 'users/new'
  resource :user

  get 'logout' => 'sessions#destroy'
  root 'sessions#new'
  resource :session

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
