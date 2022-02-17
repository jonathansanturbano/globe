Rails.application.routes.draw do
  #verb "path", to: "controller_name#action"
  resources :countries do
    resources :cities, only: [:create]
  end
  resources :cities, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
