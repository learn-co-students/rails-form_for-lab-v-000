Rails.application.routes.draw do
  resources :students, only: [:new, :create, :edit, :update, :show]
  resources :school_classes, only: [:new, :create, :edit, :update, :show]
end
