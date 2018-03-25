Rails.application.routes.draw do
  resources :students, :school_classes, only: [:new, :create, :show, :edit, :update]
end
