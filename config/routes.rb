Rails.application.routes.draw do
  resources :school_classes, :students, only: [:new, :show, :create, :edit, :update]
end
