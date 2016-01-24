Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users
  resources :users
  resources :researches

  root "researches#index"
end
