class SchoolClassesController < ApplicationController
    def create
        @school_class = SchoolClass.new(params.require(:school_class))
        @school_class.save
    end
end
