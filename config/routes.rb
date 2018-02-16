Rails.application.routes.draw do
  root 'rates#index'
  get '/admin', to: 'rates#edit'
  resources :rates
end
