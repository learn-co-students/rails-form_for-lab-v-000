Rails.application.routes.draw do
  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]
  resources :students, only: [:create, :show, :new, :edit, :update]

end
