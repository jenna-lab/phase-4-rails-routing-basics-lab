class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
      end

    # A grades action to return a list of students ranked by grade from highest to lowest
    def grades
        @students = Student.order(grade: :desc)
        render json: @students
    end
# A highest-grade action to return the student with the highest grade
    def highest_grade
        @student = Student.order(grade: :desc).first
        render json: @student
    end
end
