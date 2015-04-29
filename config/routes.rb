Rails.application.routes.draw do

  devise_for :users
  resources :freebies do
    resources :comments
  end

  root 'welcome#index'

end
