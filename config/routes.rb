Rails.application.routes.draw do

  resources :freebies
  resources :comments

  root 'welcome#index'

end
