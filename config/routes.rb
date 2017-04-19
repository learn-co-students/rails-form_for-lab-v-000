Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :school_classes, only: [:create, :show, :edit, :update, :new]
  resources :students, only: [:create, :show, :edit, :update, :new]
end
