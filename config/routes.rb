Rails.application.routes.draw do
  get 'replies/index'
  get 'replies/update'
  get 'replies/show'
  get 'replies/create'
  get 'replies/destroy'
  resources :posts_controllers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope 'api', :defaults => { format: 'json' } do
    root to: 'welcome#index'

    resources :users
    resources :posts
    namespace :auth, path: '' do
      post 'login', to: 'login#create'
      post 'register', to: 'registered#create'
    end
  end
end
