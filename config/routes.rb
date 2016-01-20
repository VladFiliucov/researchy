Rails.application.routes.draw do
  resources :researches

  root "researches#index"
end
