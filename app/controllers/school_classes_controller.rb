class SchoolClassesController < ActionController::Base

def index
  @schoolclass = SchoolClass.all
end

def show
  @schoolclass = SchoolClass.find(params[:id])
end


def new
  @schoolclass = SchoolClass.new(params[:title, :room_number])
end

def create
  @schoolclass = StudentClass.new(post_params(:title, :room_number))
  @schoolclass.save
  redirect_to_studentclass_path(@studentclass)
end


def edit
  @schoolclass = SchoolClass.find(params[:id])
end


private

def studentclass_params(*args)
  params.require(:studentclass).permit(*args)
end

end
