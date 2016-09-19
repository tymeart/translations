Rails.application.routes.draw do
  root 'translations#index'

  resources :translations
  resources :content_producers
end
