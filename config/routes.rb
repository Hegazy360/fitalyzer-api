Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'user/token' => 'user_token#create'
      resources :users
      resources :gyms do
        resources :exercises
      end
      resources :exercises
    end
  end
end
