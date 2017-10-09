Rails.application.routes.draw do
  resources :tasks
  resources :categories
  resources :articles
  resources :math_works
  resources :writings
  root 'home#index'
  get  'home/index'
  root 'home#index'
  post 'writings/:id', to:'writings#show'
  post 'math_works/:id', to:'math_works#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
