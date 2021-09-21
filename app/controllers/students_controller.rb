class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students 
    end

    def grades
        grades = Student.all.sort_by(&:grade).reverse()
        render json: grades
    end
end
