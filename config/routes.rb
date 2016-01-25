Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :users
  resources :users
  resources :researches

  get :send_research, to: 'researches#send_research', as: :send_research
  root "researches#index"
end
