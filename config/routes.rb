Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update]
  resources :schoolclasses, only: [:index, :show, :new, :create, :edit, :update]

end
