Rails.application.routes.draw do
  resources :school_classes, only: [:show, :new, :create, :edit, :update]
  resources :students, except: [:destroy, :index]
end
