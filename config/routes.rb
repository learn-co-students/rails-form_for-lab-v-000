Rails.application.routes.draw do
  resources :students, only: [:new, :create, :show, :edit, :update]
end
