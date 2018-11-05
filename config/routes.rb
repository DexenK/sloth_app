Rails.application.routes.draw do
  root 'sloths#index'
  resources :sloths
end
