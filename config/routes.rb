Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :votes
  resources :ideas
  root to: 'ideas#index'
end
