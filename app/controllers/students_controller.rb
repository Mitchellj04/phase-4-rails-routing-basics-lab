class StudentsController < ApplicationController

    def index 
        student = Student.all 
        render json: student
    end

    def grades 
        student = Student.all
        order = student.order(grade: :desc)
        render json: order
    end

    def highest_grade
        student = Student.all 
        order = student.order(grade: :desc).first
        render json: order
    end

end
