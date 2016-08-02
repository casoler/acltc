Rails.application.routes.draw do
  get "params_game_app" => 'params#params_game_app' 
  get 'guess_number' => 'params#guess_number'
  get 'guess_number_again/:guess' => 'params#guess_number_again'

  get '/form_show' => 'params#form_show'
  post '/form_return' => 'params#form_return'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
