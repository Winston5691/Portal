class StudentsController < ApplicationController
    def index 
    students = Student.all

    render json: students, status: :ok
    end

    def create
        student=Student.new  
        student.name=params[:name]
        student.email=params[:email]
        student.registration=params[:registration]
        student.save!

        render json: student, status: :ok
    end

    def destroy
            student = Student.destroy
            student.name=params[:name]
            student.email=params[:email]
            student.registration=params[:registration]
            student.save!

    end

    def update
        student = Student.update
        student.name=params[:name]
        student.email=params[:email]
        student.registration=params[:registration]
        student.save!
    
    end
    

end

