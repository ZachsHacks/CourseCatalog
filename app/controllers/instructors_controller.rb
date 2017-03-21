class InstructorsController < ApplicationController
  def index
		if logged_in?
			@instructors = Instructor.paginate(page: params[:page], per_page: 30)
		else
			flash[:danger] = "You must be logged in to view the instructors page."
			redirect_to root_path
		end
  end
end
