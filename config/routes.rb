Rails.application.routes.draw do

resources :school_classes, only: [:show, :edit, :update, :new, :create]
resources :students, only: [:show, :edit, :update, :new, :create]
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products


end
