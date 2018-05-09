Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :update, :edit] #one table
  resources :school_classes, only: [:index, :new, :create, :show, :update, :edit] #second table 
end
