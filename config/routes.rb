Rails.application.routes.draw do
  resources :students, only: %i[new create show edit update]
  resources :school_classes, only: %i[new create show edit update]
end
