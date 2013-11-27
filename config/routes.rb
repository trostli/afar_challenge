AFARBackend::Application.routes.draw do

  resources :highlights
  root :to => "highlights#index"

end
