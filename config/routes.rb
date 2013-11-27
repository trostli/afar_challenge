AFARBackend::Application.routes.draw do

  devise_for :users

  resources :highlights
  root :to => "highlights#index"

end
