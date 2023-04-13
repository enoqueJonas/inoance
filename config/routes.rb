Rails.application.routes.draw do
  devise_for :users
  resources :groups do
    resources :entities, only: [:index]
  end
  resources :entities, except: [:index]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/', to: 'groups#index', as: '/'
end
