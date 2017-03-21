class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def search
		subject = Subject.where(name: params[:subject])[0].courses if !params[:subject].empty?
		if subject != nil && params[:q] != nil
			@search = subject.select{|course| course.name.downcase.include? params[:q]}
		else
			@search = Course.search(params[:q])
		end

	end

	def show
		@course= Course.find(params[:id])
	end

	private

	def set_course
		@course= Course.find(params[:id])
	end

end
