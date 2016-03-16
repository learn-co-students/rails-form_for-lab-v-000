Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :show, :edit, :update]
  resources :school_classes, only: [:index, :new, :create, :show, :edit, :update]

  # get "/school_classes", to: "school_classes#index", as: "classes"
  # get "/school_classes/new", to: "school_classes#new", as: "new_class"
  # post "/school_classes", to: "school_classes#create", as: "create_class"
  # get "/school_classes/:id", to: "school_classes#show", as: "class"
  # get "/school_classes/:id/edit", to: "school_classes#edit", as: "edit_class"
  # patch "/school_classes/:id", to: "school_classes#update", as: "update_class"
end
