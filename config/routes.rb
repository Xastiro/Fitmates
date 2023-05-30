Rails.application.routes.draw do
  devise_for :users
  root to: "pages#welcome"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "rails/welcome#index"

  get 'home', to: 'pages#home'

end
