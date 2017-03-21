require 'will_paginate/array'

class CoursesController < ApplicationController

	def index
		if logged_in?
			@courses = Course.paginate(page: params[:page], per_page: 15)
		else
			flash[:danger] = "You must be logged in to view the courses page."
			redirect_to root_path
		end
	end

	def search
		subject = Subject.where(name: params[:subject])[0].courses if !params[:subject].empty?
		if subject != nil && params[:q] != nil
			@search = subject.select{|course| course.name.downcase.include? params[:q]}.paginate(:page => params[:page], per_page: 15)
		else
			@search = Course.search(params[:q]).paginate(:page => params[:page], per_page: 15)
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
