Rails.application.routes.draw do
resources :students, :school_classes, only: [:index, :new, :create, :edit, :update, :show]
end
