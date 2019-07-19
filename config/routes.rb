Rails.application.routes.draw do
  # get '/contacts', to: 'contacts#new'
  # get '/new', to: 'contacts#new'
  # get '/create', to: 'contacts#create'
  root to: 'contacts#index'
  resources :contacts
end
