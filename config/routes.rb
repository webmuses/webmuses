Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  scope "(:locale)", :locale => /en|pl/ do
    resources :muses, only: [:index]
    resources :articles, only: [:index]
    resources :events, only: [:index]
    resources :coaches, only: [:index]
    get '/wydarzenia', :to  => 'events#index'
    get '/materialy', :to  => 'static_pages#materials'
    get '/newsletter' => redirect(NEWSLETTER_URL)
    get '/youth' => redirect(WEBMUSES_YOUTH_URL)
    root :to  => 'static_pages#home', as: 'home'
  end
end
