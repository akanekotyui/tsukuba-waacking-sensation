Rails.application.routes.draw do
  root :to => 'costume#index'
  resources :costumes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
