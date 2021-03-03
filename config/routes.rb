Rails.application.routes.draw do

  post '/api/v1/login', to: 'api/v1/sessions#create'
  post '/api/v1/signup', to: 'api/v1/users#create'
  delete '/api/v1/logout', to: 'api/v1/sessions#destroy'
  get '/api/v1/get_current_user', to: 'api/v1/sessions#get_current_user'
  
  get "/api/v1/current_user_favorites", to: "api/v1/favorites#current_user_favorites"

  namespace  :api do
    namespace  :v1 do

      resources :users do
        resources :favorites, only: [:new, :create, :index, :show, :destroy] do
          resources :teams, only: [:new, :create, :index, :show, :destroy]
          end
      end

      resources :favorites
      resources :teams
      resources :users
    end

  end
end
