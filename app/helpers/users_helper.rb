module UsersHelper

	def pretty_print_user(user)
		string = ""
		string << "<h1>Welcome, #{user.first}!</h1>"
		string << "<h2>email: #{user.email}</h2>"
		string << "<h3>(use navigation bar to view courses, subjects, and instructors)</h3>"
		string.html_safe
	end

	def pretty_print_enrollments(enrollments)
		string = ""
		enrollments.sort_by {|e| Course.find(e.course_id).code}.each do |e|
			course = Course.find(e.course_id)
			string << "<a href='/courses/#{e.course_id}'> #{course.name} (#{course.code}) </p>"
		end
		string.html_safe
	end

end
