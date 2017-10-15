Rails.application.routes.draw do

  # resources :students, only: [:new, :create, :index, :edit, :update, :show]
  resources :students, except: :destroy

  resources :school_classes, except: :destroy

  # HTTP Verb	Path	Controller#Action	Named Helper
  # GET	/kategorien	categories#index	categories_path
  # GET	/kategorien/new	categories#new	new_category_path
  # POST	/kategorien	categories#create	categories_path
  # GET	/kategorien/:id	categories#show	category_path(:id)
  # GET	/kategorien/:id/bearbeiten	categories#edit	edit_category_path(:id)
  # PATCH/PUT	/kategorien/:id	categories#update	category_path(:id)
  # DELETE	/kategorien/:id	categories#destroy	category_path(:id)
end
