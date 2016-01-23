Rails.application.routes.draw do
  devise_for :users
  resources :researches

  root "researches#index"
end
