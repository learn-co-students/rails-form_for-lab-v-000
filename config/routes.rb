Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]
end
