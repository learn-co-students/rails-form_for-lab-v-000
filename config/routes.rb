Rails.application.routes.draw do
  resources :students, only: [ :new, :edit, :create, :show, :update]
  resources :school_classes, only: [:new, :edit, :create, :show, :update]
end
