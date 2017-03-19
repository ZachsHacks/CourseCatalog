class CoursesController < ApplicationController

  def index
		@courses = Course.all
  end

	def search
		@search = Course.search(params[:q])
	end

end
