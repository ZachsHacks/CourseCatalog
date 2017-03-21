class InstructorsController < ApplicationController
  def index
		if logged_in?
			@instructors = Instructor.all
		else
			flash[:danger] = "You must be logged in to view the instructors page."
			redirect_to root_path
		end
  end
end
