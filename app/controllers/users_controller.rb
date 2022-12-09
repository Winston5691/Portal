class UsersController < ApplicationController
    def index 
    users = User.all

    render json: users, status: :ok
    end

    def create
        user=User.new  
        user.email=params[:email]
        user.role=params[:name]
        user.password=params[:password]
        user.save!

         render json: users, status: :ok
    end
        
end
