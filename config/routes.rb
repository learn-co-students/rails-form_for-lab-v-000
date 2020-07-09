Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:new, :index, :edit, :show, :create, :update]
  resources :school_classes, only: [:index, :new, :show, :edit, :create, :update]
end
