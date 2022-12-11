class UsersController < ApplicationController
    def index 
    users = User.all

    render json: users, status: :ok
    end

    def create
    
        user=User.new 
        user.email=params[:email]
        user.role=params[:role]
        user.password=params[:password]
        user.save!

        if params[:role] == 'student'
            student=Student.new  
            student.name=params[:name]
            student.email=params[:email]
            student.registration=params[:registration]
            student.user = user
            student.save!
        elsif params[:role] == 'tutor'
            totor = Tutor.new
            tutor.name = params[:name]
            tutor.email = params[:email]
            tutor.user = user
            tutor.save!
        end

         render json: user, status: :ok
    end 


    # def current_user
    #     # @current_user = User.find(doorkeeper_token)
    # end
        
end
