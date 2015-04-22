Rails.application.routes.draw do

  resources :freebies

  root 'welcome#index'

end
