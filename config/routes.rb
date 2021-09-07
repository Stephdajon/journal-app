Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  resources :categories do
    resources :tasks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
