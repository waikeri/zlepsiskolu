Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  resources :ideas do
    resources :votes
  end
  root to: 'ideas#index'
end
