Rails.application.routes.draw do
  
  resources :students, only: [:index, :new, :create, :edit, :update, :show]
  
  #get '/students', to: 'students#index', as: :students
  #get '/students/new', to: 'students#new', as: :new_student
  #post '/students', to: 'students#create'
  #get '/student/:id/edit', to: 'students#edit', as: :edit_student
  #patch '/students/:id', to: 'students#update'
  #get '/students/:id', to: 'students#show', as: :student
  
  
  resources :school_classes, only: [:index, :new, :create, :edit, :update, :show]
  
  #get '/school_classes', to: 'school_classes#index', as: :school_classes
  #get '/school_classes/new', to: 'school_classes#new', as: :new_school_class
  #post '/school_classes', to: 'school_classes#create'
  #get '/school_classes/:id/edit', to: 'school_classes#edit', as: :edit_school_class
  #patch '/school_classes/:id', to: 'school_classes#update'
  #get '/school_classes/:id', to: 'school_classes#show', as: :school_class
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
