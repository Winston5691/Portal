class TutorsController < ApplicationController
    def index 
    tutors = Tutor.all

    render json: tutors, status: :ok
    end
end
