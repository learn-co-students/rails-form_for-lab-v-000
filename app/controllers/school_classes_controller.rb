class SchoolClassesController < ActionController::Base

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  # def index

  # end

  def new
    @school_class = SchoolClass.new
  end

  def create
    redirect_to SchoolClass.create(params[:school_class])
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    school_class = SchoolClass.find(params[:id])
    school_class.update(params[:school_class])
    redirect_to school_class
  end
end
