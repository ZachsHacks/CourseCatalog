class CoursesController < ApplicationController

  def index
		@courses = Course.all
  end

	def search
		@search = Course.search(params[:q])
		byebug
	end

	def show
		@course= Course.find(params[:id])
	end

	private

	def set_course
		@course= Course.find(params[:id])
	end

end
