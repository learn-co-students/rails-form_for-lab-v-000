Rails.application.routes.draw do
 resources :students, only: [:create, :new, :show, :edit, :update]
 resources :school_classes, only: [:create, :new, :show, :edit, :update]
end
 