class EnrollmentsController < ApplicationController

	def create
		byebug
		Enrollment.create(enrollment_params)

		respond_to do |format|
			format.js
		end

	end

	def destroy
		Enrollment.destroy(enrollment_params)
	end

	def enrollment_params
		params.require(:enrollment).permit(:course_id, :user_id)
	end

end
