Webmuses::Application.routes.draw do
  resources :muses, only: [:index]
  namespace :admin do
    resources :muses
  end
end
