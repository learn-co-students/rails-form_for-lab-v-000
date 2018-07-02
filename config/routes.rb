Rails.application.routes.draw do

  resources :students, only: [:index, :new, :create, :show, :edit, :update]
  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]

  # post 'school_classes/new', to: 'school_classes#create',  as: "new"
  # post 'students/new', to: 'students#create',  as: "new"
end
