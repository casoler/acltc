Rails.application.routes.draw do
  get '/' => "dogs#index"

  namespace :api do 
    namespace :v1 do
      get '/dog_api' => 'dog_api#index'
      post '/dog_api' => 'dog_api#create'
      get '/dog_api/:id' => 'dog_api#show'
      patch '/dog_api/:id' => 'dog_api#update'
      delete '/dog_api/:id' => 'dog_api#destroy'
    end

    namespace :v2 do
      get '/dog_api' => 'dog_api#index'
      post '/dog_api' => 'dog_api#create'
      get '/dog_api/:id' => 'dog_api#show'
      patch '/dog_api/:id' => 'dog_api#update'
      delete '/dog_api/:id' => 'dog_api#destroy'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
