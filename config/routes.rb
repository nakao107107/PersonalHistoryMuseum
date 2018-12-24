Rails.application.routes.draw do
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/sign_in' => 'user#sign_in_page'
  post '/sign_in' => 'user#sign_in'
  get '/sign_up' => 'user#sign_up_page'
end
