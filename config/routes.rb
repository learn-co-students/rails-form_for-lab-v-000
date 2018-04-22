Rails.application.routes.draw do
 
 resources :school_classes, only: [:new, :create, :show, :update, :edit]
 
 resources :students, only: [:new, :create, :show, :update, :edit]
end
