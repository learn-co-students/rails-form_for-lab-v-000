Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :create, :edit, :show, :update]
  resources :school_classes, only: [:new, :create, :edit, :show, :update]
end
