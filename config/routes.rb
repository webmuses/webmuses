Webmuses::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :muses, only: [:index]
  match '/wydarzenia', :to  => 'static_pages#events'
  match '/materialy', :to  => 'static_pages#materials'
  root :to  => 'static_pages#home', as: 'home'
end
