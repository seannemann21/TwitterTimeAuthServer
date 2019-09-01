Rails.application.routes.draw do
  get 'twitter/my_timeline'
  get 'twitter/full_text'
  get 'api/test'
  get '/auth/:provider/callback', to: 'authentication#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
