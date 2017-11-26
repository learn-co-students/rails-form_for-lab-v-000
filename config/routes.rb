Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :update, :edit, :show]
  resources :school_classes, only: [:index, :new, :create, :update, :edit, :show]
end
