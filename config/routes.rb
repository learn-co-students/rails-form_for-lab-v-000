Rails.application.routes.draw do
  resources :school_classes, except: [:destory]
  resources :students, except: [:destory]

end
