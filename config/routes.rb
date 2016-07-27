Rails.application.routes.draw do
  resources :students, only: [:show, :new, :create, :edit, :update]
  resources :school_classes, only: [:show, :new, :create, :edit, :update]

end
