class SchoolClassesController < ActionController::Base
  def index
    @school_classes = SchoolClass.all
  end

  def show        # show existing class
    @school_class = SchoolClass.find(params[:id])
  end

  def new         # create new class (2 methods)
    @school_class = SchoolClass.new
  end
  def create
    @school_class = SchoolClass.create(params.require(:school_class))
    redirect_to school_class_path(@school_class)
  end

  def edit        # update existing class (2 methods)
    @school_class = SchoolClass.find(params[:id])
  end
  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class))
    redirect_to  school_class_path(@school_class)
  end
end
