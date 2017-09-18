Rails.application.routes.draw do
  resources :writings
  root 'home#index'
  get  'home/index'
  root 'home#index'
  post 'writings/:id', to:'writings#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
