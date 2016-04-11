Rails.application.routes.draw do
  resources :students, only: [:new, :create, :edit, :show, :update]
  resources :school_classes, only: [:new, :create, :edit, :show, :update]
end
