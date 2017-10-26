Rails.application.routes.draw do
  resources :school_classes, only: [:index, :new, :create]
  resources :students, only: [:index, :new, :create]
    get '/student/:id', to: 'students#show', as: 'student'
end
