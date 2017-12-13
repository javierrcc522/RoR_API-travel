Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :destinations do
    resources :reviews
  end
end
