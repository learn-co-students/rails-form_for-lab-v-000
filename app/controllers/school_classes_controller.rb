class SchoolClassesController < ApplicationController
  def new
  @school_class = SchoolClass.new
  end

  def create
    #when you use form_tag in the view form you dont need to have the params as #[:student_classes][:title] just [:title] works.
    @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find_by(params[:id])

  end

  def edit
    @school_class = SchoolClass.find_by(params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(params[:id])
    @school_class.update(title: params[:title], room_number: params[:room_number])
    redirect_to school_classes_path(@school_class)
  end

  private


# We pass the permitted fields in as *args;
# this keeps `post_params` pretty dry while
# still allowing slightly different behavior
# depending on the controller action
def school_class_params(*args)
  params.require(:school_class).permit(*args)
end

end
#rspec ./spec/features/school_class_spec.rb --fail-fast
# rake routes
#              Prefix Verb  URI Pattern                    Controller#Action
#            students POST  /students(.:format)            students#create
#        new_students GET   /students/new(.:format)        students#new
#       edit_students GET   /students/edit(.:format)       students#edit
#                     GET   /students(.:format)            students#show
#                     PATCH /students(.:format)            students#update
#                     PUT   /students(.:format)            students#update
#      school_classes POST  /school_classes(.:format)      school_classes#create
#  new_school_classes GET   /school_classes/new(.:format)  school_classes#new
# edit_school_classes GET   /school_classes/edit(.:format) school_classes#edit
#                     GET   /school_classes(.:format)      school_classes#show
#                     PATCH /school_classes(.:format)      school_classes#update
#                     PUT   /school_classes(.:format)      school_classes#update
