Rails.application.routes.draw do
  root 'articles#index'

  get 'welcome/index'

  resources :articles
end
