Rails.application.routes.draw do
resources :school_classes, only: [:new, :create, :edit, :update, :show]
resources :students, only: [:new, :create, :edit, :update, :show]
end
