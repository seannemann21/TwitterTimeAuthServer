Rails.application.routes.draw do
  get 'api/request_token'
  get '/auth/:provider/callback', to: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
