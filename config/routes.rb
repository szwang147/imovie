Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :movies
    resources :shows
  end

  resources :movies do
    resources :shows
  end

  root "movies#index"
end
