class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :set_subjects, :set_courses
	include SessionsHelper

	def set_subjects
		@subjects = Subject.all.pluck(:name)
	end

	def set_courses
		courses = Course.all
		@course_names = courses.pluck(:name)
		@course_codes = courses.pluck(:code)
	end

end
