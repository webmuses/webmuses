Webmuses::Application.routes.draw do
  resources :muses, only: [:index]
  match '/wydarzenia', :to  => 'static_pages#events'
  match '/materialy', :to  => 'static_pages#materials'
  root :to  => 'static_pages#home', as: 'home'
end
