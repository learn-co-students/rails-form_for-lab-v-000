Rails.application.routes.draw do

  resources :students, only: [:show, :new, :create, :edit, :update]
  # get 'students/new'

  # get 'students/create'

  # get 'students/show'

  # get 'students/edit'

  # get 'students/update'
  resources :school_classes, only: [:show, :new, :create, :edit, :update]

  # get 'school_classes/new'

  # get 'school_classes/create'

  # get 'school_classes/show'

  # get 'school_classes/edit'

  # get 'school_classes/update'

end
