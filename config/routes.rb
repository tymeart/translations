Rails.application.routes.draw do
  resources :translations
  resources :content_producers
  get 'static_pages/home'

  root 'static_pages#home'

end
