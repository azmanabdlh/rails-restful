Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope 'api', defaults: { format: 'json' } do
    root to: 'welcome#index'

    resources :users do
      resources :posts
    end

    resources :posts do
      resources :replies
    end

    namespace :auth, path: '' do
      post 'login', to: 'login#create'
      post 'register', to: 'registered#create'
    end
  end
end
