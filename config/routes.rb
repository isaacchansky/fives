Rails.application.routes.draw do
  resources :entries
  devise_for :accounts, :controllers => { :omniauth_callbacks => "accounts/omniauth_callbacks" }
  root :to => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
