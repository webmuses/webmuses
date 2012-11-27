NEWSLETTER_URL = "http://webmus.us5.list-manage1.com/subscribe?u=5e7d2eada5060b03682193094&id=cdb7797b58"

Webmuses::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :muses, only: [:index]
  resources :events, only: [:index, :show]
  resources :coaches, only: [:index]
  match '/wydarzenia', :to  => 'events#summary'
  match '/materialy', :to  => 'static_pages#materials'
  match '/newsletter' => redirect(NEWSLETTER_URL)
  root :to  => 'static_pages#home', as: 'home'
end
