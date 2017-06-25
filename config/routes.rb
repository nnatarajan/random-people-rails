Rails.application.routes.draw do
  # shows html page for people
  root 'people#index'
  # generates all CRUD urls for people
  resources :people
end
