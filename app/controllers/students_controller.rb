class StudentsController < ApplicationController

def new
@student = Student.new
end

def create
    @student = Student.new(form_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
end

def show
    @student = Student.find(params[:id])
end

def edit
    @student = Student.find(params[:id])
end

def update
    @student = Student.find(params[:id])
    @student.update(form_params(:first_name, :last_name))
    redirect_to student_path(@student)
end




private
def form_params(*args)
params.require(:student).permit(args)
end

end#eoc
