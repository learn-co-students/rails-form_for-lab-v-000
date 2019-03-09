Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update]
  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update]

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

end
