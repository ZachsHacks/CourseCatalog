class EnrollmentsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def create
		Enrollment.find_or_create_by(course_id: params[:enroll].to_i, user_id: current_user.id)

		#
		# respond_to do |format|
		# 	format.js
		# end
	end

	def destroy
		Enrollment.where(course_id: params[:enroll].to_i, user_id: current_user.id).destroy_all
	end

end
