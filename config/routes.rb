Rails.application.routes.draw do
  root "posts#index"

  resources :posts do
    get :search, on: :collection
  end
  
  resources :comments, only: %i[create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
