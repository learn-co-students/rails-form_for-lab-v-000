Rails.application.routes.draw do
  
  resources :school_classes, only: [:create, :show, :new, :edit, :update]
  resources :students, only: [:create, :show, :new, :edit, :update]
  
end
