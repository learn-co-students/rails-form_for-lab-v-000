Rails.application.routes.draw do
  resources :school_classes, :students, only: %i[new create edit show update]
end
