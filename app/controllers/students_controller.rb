class StudentsController < ApplicationController
    def index
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
    end

    def create

    end

    def edit
    end
end
