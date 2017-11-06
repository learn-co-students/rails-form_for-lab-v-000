class StudentsController < ApplicationController
  def new # implicitly renders views/students/new.html.erb view file, where form to create a new student is presented
    @student = Student.new # instantiate and store a new student instance in @student instance variable to pass to view file
  end

  def create
    @student = Student.new(student_params) # instantiate student instance with attributes set via mass assignment from values in params hash
    @student.save # save student instance to DB by inserting its row representation into students table
    redirect_to student_path(@student) # redirect to the show page to show the student just created
  end

  def show # implicitly renders views/students/show.html.erb view file to show a single student
    @student = Student.find(params[:id]) # find student instance by its id attribute value (whatever replaces :id route variable). Store student instance in @student instance variable to pass to view file
  end

  def edit # implicitly renders views/students/edit.html.erb view file, where form to edit an existing student is presented
    @student = Student.find(params[:id]) # find student wished to be edited by its id attribute value, i.e., whatever replaces :id route variable
  end

  def update
    @student = Student.find(params[:id]) # find the student instance being edited by its id attribute value, i.e., whatever replaces :id route variable
    @student.update(student_params) # mass assign attribute values from student_params hash (which only has required "student" top-level key with optional "first_name" AND/OR "last_name" keys. Save changes to DB.
    redirect_to student_path(@student) # redirect to the show page of the student whose first and/or last name was just edited
  end

  private # method below is useful b/c if we change schema for students table, we can make one single change here
  # so both #create and #update will automatically have the proper attributes permitted (since both call #student_params).
  def student_params # the required "student" top-level key in params hash points to (and stores) student hash nested inside params
    params.require(:student).permit(:first_name, :last_name)
  end  # a student instance can have first_name and/or last_name attributes, but no other attributes
end
# params = {"student" => {"first_name" => "first_name attribute value entered in form", "last_name" => "last_name attribute value entered in form"}}
