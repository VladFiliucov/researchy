Rails.application.routes.draw do
  resources :researches

  root "research#index"
end
