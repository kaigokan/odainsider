Rails.application.routes.draw do
  root to: 'themes#sample'

  get '/themes/sample', to: 'themes#sample'
  resources :themes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
