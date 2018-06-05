class StudentsController < ApplicationController
require 'concerns/set_record.rb'
extend LocateRecord

  def create
    @student ||= Student.create(params[:student])
    if @student.persisted?
      redirect_to @student
    else
      render '_new'
    end
  end

  def new
    @student ||= Student.new
    render "_form"
  end

  def show
    set_student
  end

  def edit
    set_student
    render "_form"
  end

  def update
    set_student
     if @student.update(user_params(:first_name, :last_name))
       redirect_to @student
     else
       render 'edit'
     end

  end

  private

  def set_student
    @student ||= LocateRecord.find_by_id(params)
  end

  def user_params(*args)
    params.require(:student).permit(args)
  end

end
