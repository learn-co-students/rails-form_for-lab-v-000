Rails.application.routes.draw do
resources :students, only: [:index, :new, :show, :edit, :update, :create]
resources :school_classes, only: [:index, :new, :show, :edit, :update, :create]
end
