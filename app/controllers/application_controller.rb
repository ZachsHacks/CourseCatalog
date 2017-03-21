class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :set_subjects
	include SessionsHelper

	def set_subjects
		@subjects = Subject.all.pluck(:name)
	end
	
end
