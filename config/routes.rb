Rails.application.routes.draw do
  resources :students, only: [:new, :show, :create, :edit, :update]
  resources :school_classes, only: [:new, :show, :create, :edit, :update]
end
