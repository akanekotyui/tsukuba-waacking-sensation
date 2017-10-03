Rails.application.routes.draw do
  resources :costumes
  root :to => 'costumes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
