Rails.application.routes.draw do
  resources :secrets
  # I want my api be gamezone.com/api/v1/resource
  namespace  :api do
    namespace  :v1 do
      resources :users do
        resources :teams, only: [:new, :create, :index, :show, :destroy]
      end
  
      resources :teams
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
