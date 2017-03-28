class SubjectsController < ApplicationController

  def index
		if logged_in?
			@subjects = Subject.all
		else
			flash[:danger] = "You must be logged in to view the subjects page."
			redirect_to root_path
		end
  end

	def show
		@enrollments = current_user.enrollments
		@subject = Subject.find(params[:id])
	end

end
