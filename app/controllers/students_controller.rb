class StudentsController < ApplicationController
  post '/create' do
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    redirect_to '/student/#{@student.id}'
  end
end
