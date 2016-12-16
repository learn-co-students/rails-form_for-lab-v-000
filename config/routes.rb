Rails.application.routes.draw do
  resources :school_classes, :students, only: [:index, :new, :create, :show, :edit, :update]

end
