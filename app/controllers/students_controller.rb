class StudentsController < ApplicationController
    def index 
    student = Student.find_by(user_id: current_user.id)
    render json: student, status: :ok
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

