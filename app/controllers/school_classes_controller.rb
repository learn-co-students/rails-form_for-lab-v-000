class SchoolClassesController<ApplicationController
  def index
  end

  def new
    @class=SchoolClass.new
  end

  def create
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @class = SchoolClass.find(params[:id])

  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(class_params(:title, :room_number))
   redirect_to school_class_path(@class)
  end

  def create
    @class = SchoolClass.new(class_params(:title,:room_number))
	  @class.save
    redirect_to school_class_path(@class)
  end

  private
	def class_params(*args)
		params.require(:school_class).permit(*args)
	end
end
