Rails.application.routes.draw do
  resources :students, only: %i[show new create edit update]
  resources :school_classes, only: %i[show new create edit update]
end
