Rails.application.routes.draw do
  resources :schoolclasses, only: [:new, :create, :show, :update]

  post 'schoolclass/new', to: 'schoolclass#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
