Rails.application.routes.draw do
  get '/dog' => 'dog#index'
  get '/dog/new' => 'dog#new'
  post '/dog' => 'dog#create'
  get 'dog/:id' => 'dog#show'
  get '/dog/:id/edit' => 'dog#edit'
  patch '/dog/:id' => 'dog#update'
  delete '/dog/:id' => 'dog#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
