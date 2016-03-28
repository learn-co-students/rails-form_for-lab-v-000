Rails.application.routes.draw do

  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]
  resources :students, only: [:new, :create, :show, :edit, :update]

  post '/school_classes/new', to: 'school_classes#create'
  post '/students/new', to: 'students#create'

end
